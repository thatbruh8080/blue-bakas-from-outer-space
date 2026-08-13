// ____________________________                                                                                                                             
// ██▀▀█▀▀██▀▀▀▀▀▀▀█▀▀█        │  ██▀▄ ▄▄               ██▀▄      ██               ▄█▀▀                  ▄▀█▄      ██                ▄▄▄                    
// ██  ▀  █▄  ▀██▄ ▀ ▄█ ▄▀▀ █  │  ██▀▄ ██  ██ █ ▄███    ██▀▄ ▄▀██ ██▄▀ ▄▀██  ██▀   ██▀▀ ██▄▀ ▄▀█▄ ▄█▄█   █ ██ ██ █ ██▀▀ ▄███ ██▄▀   ▀█▄  ██▀▄ ▄▀██ ▄█▀▄ ▄███
// █  █ █  ▀▀  ▄█  █  █ ▀▄█ █▄ │  ██▄▀ ▀█▄ ▀█▄▀ ▀█▄▄    ██▄▀ ▀▄██ ██ █ ▀▄██ ▄██    ██   ██   ▀▄█▀ ██ █   ▀▄█▀ ▀█▄▀ ▀█▄▄ ▀█▄▄ ██     ▄▄█▀ ██▀  ▀▄██ ▀█▄  ▀█▄▄
// ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀────────┘                                                                                                         ▀▀                 
// Blue Meanies from Outer Space port                                          
// Original game programmed by Duane Later and published by Commodore Business Machines for the VIC-20 in 1981.                                             
// 2026, thatbruh                                                                                                                                           
//──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────                                             
                                                                                 
//=============================================================================
// Includes and declarations
//=============================================================================

#include "msxgl.h"
#include "vdp.h"
#include "print.h"
#include "input.h"
#include "psg.h"
#include "font/font_petscii.h"
#include "content/map.h"
#include "content/tileset.h"
#include "content/meanie_8x8.h"
#include "content/explosion.h"
#include "content/fuel.h"
#include "content/sfx.h"
#include "game/pawn.h"
#include "ayfx/ayfx_player.h"

u8 Score = 0;
u16 Energy = 1000;

//=============================================================================
// Game constants
//=============================================================================

#define PLAYFIELD_W         32
#define PLAYFIELD_H         22
#define PLAYFIELD_SIZE      704

#define TILE_EMPTY          0
#define TILE_SOLID          1
#define TILE_REPAIR_ROBOT   2
#define TILE_CANNON         8
#define TILE_LASER1         24
#define TILE_CORE           16
#define TILE_LASER2         17

#define MEANIE_COUNT        2

#define MEANIE_MIN_X        0
#define MEANIE_MAX_X        255

#define MEANIE_SPAWN_MIN_X  40
#define MEANIE_SPAWN_MAX_X  200
#define MEANIE_SPAWN_Y      0

#define MEANIE_BOTTOM_Y     200

#define LASER_COL_MIN       4
#define LASER_COL_MAX       27

#define LASER_LEFT_CANNON_X 3
#define LASER_RIGHT_CANNON_X 28

#define LASER_ROW_TOP       3
#define LASER_ROW_MIDDLE    7
#define LASER_ROW_BOTTOM    11

#define LASER_STEP_DELAY    1

#define REPAIR_COST         20
#define FUEL_RESPAWN_DELAY_SHORT   450
#define FUEL_RESPAWN_DELAY_MEDIUM  900
#define FUEL_RESPAWN_DELAY_LONG    1800

// Fixed-point movement for smooth sprites.
// 4 fractional bits means:
// 16 = 1 pixel
// 8  = 0.5 pixel
// 4  = 0.25 pixel
#define FIX_SHIFT           4
#define FIX_ONE             16

// Meanie speed in fixed-point units.
#define MEANIE_HSPEED_FIX   16  // 1 pixel/frame sideways
#define MEANIE_VSPEED_FIX   8   // 0.5 pixel/frame downward

#define SPR_PAT_MEANIE      0
#define SPR_PAT_FUEL        1
#define SPR_PAT_EXPLOSION   2

#define SPR_ID_FUEL         MEANIE_COUNT
#define SPR_ID_EXPLOSION    (MEANIE_COUNT + 1)

//=============================================================================
// Structures
//=============================================================================

typedef struct
{
    Pawn PawnObj;
    bool Active;
    u8 Tick;

    // Smooth 4-bit fixed-point position.
    // High bits are pixels, low 4 bits are fractional.
    i16 XFix;
    i16 YFix;

    // Smooth 4-bit fixed-point velocity.
    i16 VXFix;
    i16 VYFix;

    // How much horizontal movement remains in the current left/right move.
    u16 MoveLeftFix;
} Meanie;

//=============================================================================
// Globals
//=============================================================================

Meanie g_Meanies[MEANIE_COUNT];
Pawn g_Fuel;
Pawn g_Explosion;

bool g_FuelActive = FALSE;
bool g_ExplosionActive = FALSE;

i16 g_FuelXFix = 0;
i16 g_FuelYFix = 0;

u16 g_FuelSpawnDelay = FUEL_RESPAWN_DELAY_LONG;

u16 g_Rand = 0xA7;
bool g_FuelSoundWanted = FALSE;
bool g_FuelSoundRestart = FALSE;

bool g_GameOverToTitle = FALSE;
bool g_GameOverSoundDone = FALSE;

//=============================================================================
// Function prototypes
//=============================================================================

void DrawHUD();
void UpdateLaser();
void DestroyMapTile(u8 tx, u8 ty);
u8 GetOriginalMapTile(u8 tx, u8 ty);
u8 GetMapTile(u8 tx, u8 ty);
bool LaserHitsMeanieAtTile(u8 tx, u8 ty);
bool LaserHitsFuelAtTile(u8 tx, u8 ty);

u16 Rand16();
u8 Rand8();
u8 RandRange(u8 min, u8 max);
u16 PickFuelRespawnDelay();

void InitFuel();
void UpdateFuel();
void TrySpawnFuel();
void SpawnFuel();
void DespawnFuel();
bool FuelHitsSolidTile();
void UpdateFuelSound();

void OnSFXFinished();

void InitExplosion();
void StartExplosion(i16 x, i16 y);
void UpdateExplosion();
void ExplosionDestroyTilesAt(i16 x, i16 y);
bool IsExplosionDestroyableTile(u8 tile);
void ShowMeanerScreen();
void LoadMap();
void LoadLevel();
void ResetGameplayFlags();
bool AnyKeyDown();
void WaitForCleanKeyPress();


//=============================================================================
// RAM buffer for the map (32x22)
//=============================================================================

u8 g_RamMap[PLAYFIELD_SIZE]; 

//=============================================================================
// Repair robot state
//=============================================================================

u8 g_RobotTileX = 0;
u8 g_RobotTileY = 0;

// This is the real map tile hidden underneath tile 2.
// When the robot moves away, this tile is restored.
u8 g_RobotUnderTile = TILE_EMPTY;

u8 g_KeyRow8Prev = 0xFF;
u8 g_RobotMoveDelay = 0;

//=============================================================================
// Laser state, more variable declarations and booleans
//=============================================================================

bool g_LaserActive = FALSE;
bool g_LaserErasing = FALSE;
bool g_ShowGoodHit = FALSE;
bool g_hasHUDChanged = TRUE;

u8 g_LaserTileX = 0;
u8 g_LaserTileY = 0;
u8 g_LaserTile = TILE_EMPTY;
i8 g_LaserDir = 0;

u8 g_LaserStepDelay = 0;

u8 g_KeyRow2Prev = 0xFF;
u8 g_KeyRow4Prev = 0xFF;
u8 g_KeyRow5Prev = 0xFF;


//=============================================================================
// Initialize graphics
//=============================================================================

void InitGraphics() {
    VDP_SetMode(VDP_MODE_SCREEN1);
    VDP_ClearVRAM();

    // SCREEN 1 backdrop color. Color 0 in the color table will show this.
    VDP_SetColor(COLOR_BLACK);
    VDP_SetSpriteFlag(VDP_SPRITE_SIZE_8);

    // Writes Meanie sprite to the pattern table
    VDP_WriteVRAM_16K(
        g_Meanie8x8,
        VDP_GetSpritePatternTable() + (SPR_PAT_MEANIE * 8),
        sizeof(g_Meanie8x8)
    );

    // Writes fuel tank sprite to the pattern table
    VDP_WriteVRAM_16K(
        g_Fuel8x8,
        VDP_GetSpritePatternTable() + (SPR_PAT_FUEL * 8),
        sizeof(g_Fuel8x8)
    );

    // Writes explosion sprites to the pattern table
    VDP_WriteVRAM_16K(
        g_Explosion8x8,
        VDP_GetSpritePatternTable() + (SPR_PAT_EXPLOSION * 8),
        sizeof(g_Explosion8x8)
    );

    // SCREEN 1 has a 256-pattern table. The tiles correspond to 0-31
    VDP_WriteVRAM_16K(
        g_Tiles_Patterns,
        g_ScreenPatternLow,
        sizeof(g_Tiles_Patterns)
    );

    // Put the PETSCII font at pattern 32 and above.
    // Print_SetTextFont() also initializes Print and initially sets the
    // SCREEN 1 color table to white on transparent/backdrop.
    Print_SetTextFont(g_Font_PETSCII, 32);

    // SCREEN 1 color table: one byte controls each color pair of 8 patterns.
    // Leave all font groups white on the black backdrop, then override the four groups used by the game tiles.
    VDP_FillVRAM_16K(0xF0, g_ScreenColorLow, 32);
    VDP_Poke_16K(0x20, g_ScreenColorLow + 0); // patterns  0-7:  green / backdrop
    VDP_Poke_16K(0xF0, g_ScreenColorLow + 1); // patterns  8-15: white / backdrop
    VDP_Poke_16K(0xA0, g_ScreenColorLow + 2); // patterns 16-23: yellow / backdrop
    VDP_Poke_16K(0x70, g_ScreenColorLow + 3); // patterns 24-31: cyan / backdrop
}

//=============================================================================
// Initialize sound
//=============================================================================

void VBlankHook()
{
    ayFX_Update();
    PSG_Apply();
}

void InitSound()
{
    PSG_Mute();

    ayFX_InitBank(g_sfx);
    ayFX_SetChannel(PSG_CHANNEL_A);
    ayFX_SetMode(AYFX_MODE_FIXED);
    ayFX_SetFinishCB(OnSFXFinished);

    BIOS_SetHookCallback(H_TIMI, VBlankHook);
}

void PlaySFX(u8 id, u8 prio)
{
    ayFX_PlayBank(id, prio);
}

void OnSFXFinished()
{
    ayFX_Mute();

    if(g_GameOverToTitle)
    {
        g_GameOverSoundDone = TRUE;
        return;
    }

    if(g_FuelSoundWanted)
    {
        g_FuelSoundRestart = TRUE;
    }
}

//=============================================================================
// Shared state helpers
//=============================================================================

void ResetGameplayFlags()
{
    g_LaserActive = FALSE;
    g_LaserErasing = FALSE;
    g_ShowGoodHit = FALSE;
    g_hasHUDChanged = TRUE;
}

bool AnyKeyDown()
{
    u8 row;
    bool anyKey;

    anyKey = FALSE;

    for(row = 0; row <= 8; row++)
    {
        if(Keyboard_Read(row) != 0xFF)
            anyKey = TRUE;
    }

    return anyKey;
}

void WaitForCleanKeyPress()
{
    // Wait until no key is held.
    // This prevents the title screen from instantly skipping
    // if a key was already down during boot/reset.
    do
    {
        Halt();
    }
    while(AnyKeyDown());

    // Now wait for any new key press.
    do
    {
        Halt();
    }
    while(!AnyKeyDown());

    // Wait until released so the starting key does not affect gameplay.
    do
    {
        Halt();
    }
    while(AnyKeyDown());
}

//=============================================================================
// Initialize pawn
//=============================================================================

const Pawn_Sprite g_MeanieSprite[] =
{
    { 0, 0, 0, COLOR_CYAN, 0 }
};

const Pawn_Frame g_MeanieFrames[] =
{
    { 0, 10, NULL } // pattern, duration, callback
};

const Pawn_Action g_MeanieActions[] =
{
    { g_MeanieFrames, numberof(g_MeanieFrames), TRUE, TRUE }
};

void InitMeanie()
{
    u8 i;

    for(i = 0; i < MEANIE_COUNT; i++)
    {
        // Each meanie uses one 8x8 sprite.
        // Sprite IDs are 0 and 1 when MEANIE_COUNT is 2.
        Pawn_Initialize(
            &g_Meanies[i].PawnObj,
            g_MeanieSprite,
            numberof(g_MeanieSprite),
            i,
            g_MeanieActions
        );

        Pawn_SetPosition(&g_Meanies[i].PawnObj, 122, 0);
        Pawn_Disable(&g_Meanies[i].PawnObj);

        g_Meanies[i].Active = FALSE;
        g_Meanies[i].Tick = 0;

        g_Meanies[i].XFix = 0;
        g_Meanies[i].YFix = 0;

        g_Meanies[i].VXFix = 0;
        g_Meanies[i].VYFix = 0;

        // No current sideways movement yet.
        // SpawnMeanie() will call PickMeanieSideMove().
        g_Meanies[i].MoveLeftFix = 0;
    }
}

//=============================================================================
// Initialize fuel
//=============================================================================

const Pawn_Sprite g_FuelSprite[] =
{
    { 0, 0, 0, COLOR_CYAN, 0 }
};

const Pawn_Frame g_FuelFrames[] =
{
    { 1, 10, NULL } // sprite pattern 1
};

const Pawn_Action g_FuelActions[] =
{
    { g_FuelFrames, numberof(g_FuelFrames), TRUE, TRUE }
};

void InitFuel()
{
    Pawn_Initialize(
        &g_Fuel,
        g_FuelSprite,
        numberof(g_FuelSprite),
        SPR_ID_FUEL,
        g_FuelActions
    );

    Pawn_SetPosition(&g_Fuel, 0, 216);
    Pawn_Disable(&g_Fuel);

    g_FuelActive = FALSE;
    g_FuelXFix = 0;
    g_FuelYFix = 0;

    g_FuelSpawnDelay = PickFuelRespawnDelay();
}

void SpawnFuel()
{
    u8 tileX;
    u8 x;

    // Columns 4 to 27 = pixels 32 to 216.
    tileX = RandRange(4, 27);
    x = tileX << 3;

    g_FuelXFix = ((i16)x) << FIX_SHIFT;
    g_FuelYFix = 0;

    Pawn_SetPosition(&g_Fuel, x, 0);
    Pawn_Enable(&g_Fuel);

    g_FuelActive = TRUE;
}

void DespawnFuel()
{
    Pawn_Disable(&g_Fuel);
    g_FuelActive = FALSE;
    g_FuelSpawnDelay = PickFuelRespawnDelay();

    UpdateFuelSound();
}

void TrySpawnFuel()
{
    if(g_FuelActive)
        return;

    if(g_FuelSpawnDelay > 0)
    {
        g_FuelSpawnDelay--;
        return;
    }

    SpawnFuel();
}

bool FuelHitsSolidTile()
{
    i16 x;
    i16 y;

    u8 tx1;
    u8 tx2;
    u8 ty;

    x = g_FuelXFix >> FIX_SHIFT;
    y = g_FuelYFix >> FIX_SHIFT;

    // Check bottom-left and bottom-right of the 8x8 fuel sprite.
    tx1 = (u8)((x + 1) >> 3);
    tx2 = (u8)((x + 7) >> 3);
    ty  = (u8)((y + 7) >> 3);

    if(ty >= PLAYFIELD_H)
        return FALSE;

    return (GetMapTile(tx1, ty) == TILE_SOLID) || (GetMapTile(tx2, ty) == TILE_SOLID);
}

void UpdateFuel()
{
    i16 x;
    i16 y;

    bool freeze = g_LaserActive || g_LaserErasing;

    // During laser draw/erase, freeze the fuel tank completely:
    // no spawn countdown, no falling, no collision, just redraw if visible.
    if(freeze)
    {
        if(g_FuelActive)
        {
            Pawn_Draw(&g_Fuel);
        }

        return;
    }

    TrySpawnFuel();

    UpdateFuelSound();

    if(!g_FuelActive)
        return;

    g_FuelYFix += 16;

    x = g_FuelXFix >> FIX_SHIFT;
    y = g_FuelYFix >> FIX_SHIFT;

    if(FuelHitsSolidTile())
    {
        if(Energy <= 9499)
            Energy += 500;
        else
            Energy = 9999;

        g_ShowGoodHit = FALSE;
        Print_DrawTextAt(23, 22, " REFUELED");
        g_hasHUDChanged = TRUE;

        DespawnFuel();

        return;
    }

    if(y >= MEANIE_BOTTOM_Y)
    {
        DespawnFuel();

        return;
    }

    Pawn_SetPosition(&g_Fuel, (u8)x, (u8)y);

    Pawn_Update(&g_Fuel);
    Pawn_Draw(&g_Fuel);
}

void UpdateFuelSound()
{
    if(!g_FuelActive)
    {
        g_FuelSoundWanted = FALSE;
        g_FuelSoundRestart = FALSE;
        return;
    }

    if(!g_FuelSoundWanted)
    {
        g_FuelSoundWanted = TRUE;
        g_FuelSoundRestart = TRUE;
    }

    if(g_FuelSoundRestart)
    {
        // Low priority so laser/hit can override it.
        // 6 = your fuel loop SFX index.
        if(ayFX_PlayBank(6, 12) == AYFX_ERROR_NONE)
        {
            g_FuelSoundRestart = FALSE;
        }
    }
}

u16 PickFuelRespawnDelay()
{
    u8 choice;

    choice = RandRange(0, 2);

    if(choice == 0)
        return FUEL_RESPAWN_DELAY_SHORT;

    if(choice == 1)
        return FUEL_RESPAWN_DELAY_MEDIUM;

    return FUEL_RESPAWN_DELAY_LONG;
}

//=============================================================================
// Explosion
//=============================================================================

const Pawn_Sprite g_ExplosionSprite[] =
{
    // 2x2 block made from four 8x8 sprite patterns.
    // Third field is pattern offset from the frame pattern.
    { 0, 0, 0, COLOR_CYAN, 0 }, // top-left
    { 8, 0, 1, COLOR_CYAN, 0 }, // top-right
    { 0, 8, 2, COLOR_CYAN, 0 }, // bottom-left
    { 8, 8, 3, COLOR_CYAN, 0 }  // bottom-right
};

const Pawn_Frame g_ExplosionFrames[] =
{
    { SPR_PAT_EXPLOSION, 10, NULL }
};

const Pawn_Action g_ExplosionActions[] =
{
    { g_ExplosionFrames, numberof(g_ExplosionFrames), TRUE, TRUE }
};

void InitExplosion()
{
    Pawn_Initialize(
        &g_Explosion,
        g_ExplosionSprite,
        numberof(g_ExplosionSprite),
        SPR_ID_EXPLOSION,
        g_ExplosionActions
    );

    Pawn_SetPosition(&g_Explosion, 0, 216);
    Pawn_Disable(&g_Explosion);

    g_ExplosionActive = FALSE;
}

void StartExplosion(i16 x, i16 y)
{
    // Center the 16x16 explosion around the 8x8 thing that was hit.
    x -= 4;
    y -= 4;

    if(x < 0)
        x = 0;
    else if(x > 240)
        x = 240;

    if(y < 0)
        y = 0;
    else if(y > 176)
        y = 176;

    // New behaviour:
    // destroy every map tile touched by the 16x16 explosion box.
    ExplosionDestroyTilesAt(x, y);

    Pawn_SetPosition(&g_Explosion, (u8)x, (u8)y);
    Pawn_Enable(&g_Explosion);

    g_ExplosionActive = TRUE;
}

void UpdateExplosion()
{
    if(!g_ExplosionActive)
        return;

    Pawn_Update(&g_Explosion);
    Pawn_Draw(&g_Explosion);

    // Keep the explosion alive while the laser is active or erasing.
    // Once the laser is completely done, hide the explosion.
    if(!g_LaserActive && !g_LaserErasing)
    {
        Pawn_Disable(&g_Explosion);
        g_ExplosionActive = FALSE;
    }
}

//=============================================================================
// Map helpers
//=============================================================================

u16 GetMapIndex(u8 tx, u8 ty)
{
    return (ty * PLAYFIELD_W) + tx;
}

u8 GetMapTile(u8 tx, u8 ty)
{
    if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
        return TILE_SOLID;

    return g_RamMap[GetMapIndex(tx, ty)];
}

u8 GetOriginalMapTile(u8 tx, u8 ty)
{
    u16 index;
    u8 tile;

    if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
        return TILE_SOLID;

    index = GetMapIndex(tx, ty);
    tile = g_Map[index];

    // Tile 2 is the repair robot overlay in the original map.
    // The real tile underneath the starting robot should be empty.
    if(tile == TILE_REPAIR_ROBOT)
        return TILE_EMPTY;

    return tile;
}

void SetMapTile(u8 tx, u8 ty, u8 tile)
{
    u16 index;

    if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
        return;

    index = GetMapIndex(tx, ty);

    g_RamMap[index] = tile;

    VDP_WriteVRAM_16K(
        &g_RamMap[index],
        VDP_GetLayoutTable() + index,
        1
    );
}

bool IsDestroyableTile(u8 tile)
{
    // 1 = solid
    // 3 = cannon
    // 4 = laser 1
    // 5 = core
    // 6 = laser 2
    // all destroyable by meanies
    return tile != TILE_EMPTY && tile != TILE_REPAIR_ROBOT;
}

bool IsExplosionDestroyableTile(u8 tile)
{
    // Safer: do not let explosions erase the repair robot overlay.
    // If you truly want explosions to erase absolutely everything,
    // remove this check.
    return tile != TILE_EMPTY && tile != TILE_REPAIR_ROBOT;
}

void ExplosionDestroyTilesAt(i16 x, i16 y)
{
    u8 tx0;
    u8 ty0;
    u8 tx1;
    u8 ty1;
    u8 tx;
    u8 ty;
    u8 tile;

    // Explosion is 16x16 pixels.
    // x/y are the top-left pixel of the explosion sprite.
    if(x < 0)
        x = 0;

    if(y < 0)
        y = 0;

    tx0 = (u8)(x >> 3);
    ty0 = (u8)(y >> 3);

    tx1 = (u8)((x + 15) >> 3);
    ty1 = (u8)((y + 15) >> 3);

    if(tx1 >= PLAYFIELD_W)
        tx1 = PLAYFIELD_W - 1;

    if(ty1 >= PLAYFIELD_H)
        ty1 = PLAYFIELD_H - 1;

    for(ty = ty0; ty <= ty1; ty++)
    {
        for(tx = tx0; tx <= tx1; tx++)
        {
            tile = GetMapTile(tx, ty);

            if(IsExplosionDestroyableTile(tile))
            {
                SetMapTile(tx, ty, TILE_EMPTY);
            }
        }
    }
}

//=============================================================================
// Repair robot
//=============================================================================

void InitRepairRobot()
{
    u16 index;
    u8 tx;
    u8 ty;

    // Find tile 2 in the RAM map.
    // The tilemap already contains the repair robot, so we locate it automatically.
    for(index = 0; index < PLAYFIELD_SIZE; index++)
    {
        if(g_RamMap[index] == TILE_REPAIR_ROBOT)
        {
            g_RobotTileX = index & 31;
            g_RobotTileY = index >> 5;

            // The robot itself is an overlay.
            // Your screenshot has it standing over empty space, so start with 0 beneath it.
            g_RobotUnderTile = TILE_EMPTY;

            SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
            return;
        }
    }

    // Fallback if tile 2 is not found in the map.
    tx = 10;
    ty = 21;

    g_RobotTileX = tx;
    g_RobotTileY = ty;
    g_RobotUnderTile = GetMapTile(tx, ty);

    SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
}

void MoveRepairRobot(i8 dx, i8 dy)
{
    i16 newX;
    i16 newY;

    newX = (i16)g_RobotTileX + dx;
    newY = (i16)g_RobotTileY + dy;

    if(newX < 0 || newY < 0 || newX >= PLAYFIELD_W || newY >= PLAYFIELD_H)
        return;

    // Restore the real tile where the robot used to be.
    SetMapTile(g_RobotTileX, g_RobotTileY, g_RobotUnderTile);

    // Move to the new tile.
    g_RobotTileX = (u8)newX;
    g_RobotTileY = (u8)newY;

    // Remember what is now underneath the robot.
    g_RobotUnderTile = GetMapTile(g_RobotTileX, g_RobotTileY);

    // Draw the robot on top of that tile.
    SetMapTile(g_RobotTileX, g_RobotTileY, TILE_REPAIR_ROBOT);
}

void RepairRobotTile()
{
    u8 originalTile;
    u8 buildTile;

    if(Energy < REPAIR_COST)
        return;

    originalTile = GetOriginalMapTile(g_RobotTileX, g_RobotTileY);

    // If this spot originally had something important, restore that.
    // 1 = wall/floor
    // 3 = cannon
    // 4 = laser 1
    // 5 = core
    // 6 = laser 2
    if(originalTile != TILE_EMPTY)
        buildTile = originalTile;
    else
        buildTile = TILE_SOLID; // Build anywhere, even where original map was empty.

    // Already built/repaired.
    if(g_RobotUnderTile == buildTile)
        return;

    // Build/repair the hidden tile under the robot.
    // The robot remains visible until it moves away.
    g_RobotUnderTile = buildTile;
    Energy -= REPAIR_COST;
    g_hasHUDChanged = TRUE;

    g_ShowGoodHit = FALSE;
    DrawHUD();
    Print_DrawTextAt(23, 22, " BUILDING");
}

void UpdateRepairRobot()
{
    u8 row8;
    bool spacePushed;

    row8 = Keyboard_Read(8);

    spacePushed = IS_KEY_PUSHED(row8, g_KeyRow8Prev, KEY_SPACE);

    if(spacePushed)
    {
        RepairRobotTile();
    }

    // Slow movement so it feels jittery instead of sliding smoothly.
    if(g_RobotMoveDelay > 0)
    {
        g_RobotMoveDelay--;
        g_KeyRow8Prev = row8;
        return;
    }

    if(IS_KEY_PRESSED(row8, KEY_LEFT))
    {
        MoveRepairRobot(-1, 0);
        g_RobotMoveDelay = 5;
    }
    else if(IS_KEY_PRESSED(row8, KEY_RIGHT))
    {
        MoveRepairRobot(1, 0);
        g_RobotMoveDelay = 5;
    }
    else if(IS_KEY_PRESSED(row8, KEY_UP))
    {
        MoveRepairRobot(0, -1);
        g_RobotMoveDelay = 5;
    }
    else if(IS_KEY_PRESSED(row8, KEY_DOWN))
    {
        MoveRepairRobot(0, 1);
        g_RobotMoveDelay = 5;
    }

    g_KeyRow8Prev = row8;
}

//=============================================================================
// Lasers
//=============================================================================

bool HasLaserOnScreen()
{
    u16 index;

    for(index = 0; index < PLAYFIELD_SIZE; index++)
    {
        if(g_RamMap[index] == TILE_LASER1)
            return TRUE;

        if(g_RamMap[index] == TILE_LASER2)
            return TRUE;
    }

    return FALSE;
}

bool CanFireLaser(u8 cannonX, u8 cannonY)
{
    // If the cannon was destroyed, it cannot fire anymore.
    if(GetMapTile(cannonX, cannonY) != TILE_CANNON)
        return FALSE;

    // Need enough energy to fire.
    if(Energy < 50)
        return FALSE;

    // Only one laser at a time.
    if(g_LaserActive)
        return FALSE;

    return TRUE;
}

bool LaserHitsFuelAtTile(u8 tx, u8 ty)
{
    i16 laserLeft;
    i16 laserTop;
    i16 laserRight;
    i16 laserBottom;

    i16 fuelLeft;
    i16 fuelTop;
    i16 fuelRight;
    i16 fuelBottom;

    if(!g_FuelActive)
        return FALSE;

    laserLeft = ((i16)tx) << 3;
    laserTop = ((i16)ty) << 3;
    laserRight = laserLeft + 7;
    laserBottom = laserTop + 7;

    fuelLeft = g_FuelXFix >> FIX_SHIFT;
    fuelTop = g_FuelYFix >> FIX_SHIFT;
    fuelRight = fuelLeft + 7;
    fuelBottom = fuelTop + 7;

    if(fuelRight < laserLeft)
        return FALSE;

    if(fuelLeft > laserRight)
        return FALSE;

    if(fuelBottom < laserTop)
        return FALSE;

    if(fuelTop > laserBottom)
        return FALSE;

    StartExplosion(fuelLeft, fuelTop);

    DespawnFuel();

    return TRUE;
}

bool LaserHitsMeanieAtTile(u8 tx, u8 ty)
{
    u8 i;

    i16 laserLeft;
    i16 laserTop;
    i16 laserRight;
    i16 laserBottom;

    i16 meanieLeft;
    i16 meanieTop;
    i16 meanieRight;
    i16 meanieBottom;

    bool hit;

    hit = FALSE;

    laserLeft = ((i16)tx) << 3;
    laserTop = ((i16)ty) << 3;
    laserRight = laserLeft + 7;
    laserBottom = laserTop + 7;

    for(i = 0; i < MEANIE_COUNT; i++)
    {
        if(!g_Meanies[i].Active)
            continue;

        meanieLeft = g_Meanies[i].XFix >> FIX_SHIFT;
        meanieTop = g_Meanies[i].YFix >> FIX_SHIFT;
        meanieRight = meanieLeft + 7;
        meanieBottom = meanieTop + 7;

        if(meanieRight < laserLeft)
            continue;

        if(meanieLeft > laserRight)
            continue;

        if(meanieBottom < laserTop)
            continue;

        if(meanieTop > laserBottom)
            continue;

        StartExplosion(meanieLeft, meanieTop);

        Pawn_Disable(&g_Meanies[i].PawnObj);
        g_Meanies[i].Active = FALSE;

        hit = TRUE;
    }

    return hit;
}

void StartLaser(u8 row, bool fromLeft)
{
    if(fromLeft)
    {
        if(!CanFireLaser(LASER_LEFT_CANNON_X, row))
            return;

        g_LaserTileX = LASER_COL_MIN;
        g_LaserTileY = row;
        g_LaserTile = TILE_LASER1;
        g_LaserDir = 1;
    }
    else
    {
        if(!CanFireLaser(LASER_RIGHT_CANNON_X, row))
            return;

        g_LaserTileX = LASER_COL_MAX;
        g_LaserTileY = row;
        g_LaserTile = TILE_LASER2;
        g_LaserDir = -1;
    }

    Energy -= 50;
    g_hasHUDChanged = TRUE;
    DrawHUD();

    g_LaserStepDelay = LASER_STEP_DELAY;
    g_LaserErasing = FALSE;
    g_LaserActive = TRUE;

    SetMapTile(g_LaserTileX, g_LaserTileY, g_LaserTile);
    PlaySFX(4, 1);
}

void UpdateActiveLaser()
{
    if(!g_LaserActive)
        return;

    if(g_LaserStepDelay > 0)
    {
        g_LaserStepDelay--;
        return;
    }

    if(!g_LaserErasing)
    {
        {
            bool hitMeanie;
            bool hitFuel;

            hitMeanie = LaserHitsMeanieAtTile(g_LaserTileX, g_LaserTileY);
            hitFuel = LaserHitsFuelAtTile(g_LaserTileX, g_LaserTileY);

            if(hitMeanie || hitFuel)
            {
                if(hitMeanie)
                {
                    g_ShowGoodHit = TRUE;

                    if(Score <= 190)
                        Score += 10;
                    else
                        Score = 200;
                }
                else
                {
                    g_ShowGoodHit = FALSE;

                    if(Score >= 80)
                        Score -= 80;
                    else
                        Score = 0;
                }

                g_hasHUDChanged = TRUE;

                PlaySFX(5, 0);

                if(Score >= 200)
                {
                    ShowMeanerScreen();
                    return;
                }

                SetMapTile(g_LaserTileX, g_LaserTileY, TILE_EMPTY);

                g_LaserErasing = TRUE;

                if(g_LaserDir > 0)
                    g_LaserTileX = LASER_COL_MIN;
                else
                    g_LaserTileX = LASER_COL_MAX;

                return;
            }
        }

        // Draw current laser tile.
        SetMapTile(g_LaserTileX, g_LaserTileY, g_LaserTile);

        // Move laser head.
        if(g_LaserDir > 0)
        {
            if(g_LaserTileX >= LASER_COL_MAX)
            {
                g_LaserErasing = TRUE;
                g_LaserTileX = LASER_COL_MIN;
            }
            else
            {
                g_LaserTileX++;
            }
        }
        else
        {
            if(g_LaserTileX <= LASER_COL_MIN)
            {
                g_LaserErasing = TRUE;
                g_LaserTileX = LASER_COL_MAX;
            }
            else
            {
                g_LaserTileX--;
            }
        }
    }
    else
    {
        // Erase the laser line in the same direction it was drawn.
        SetMapTile(g_LaserTileX, g_LaserTileY, TILE_EMPTY);

        if(g_LaserDir > 0)
        {
            if(g_LaserTileX >= LASER_COL_MAX)
            {
                g_LaserActive = FALSE;
                g_LaserErasing = FALSE;
                return;
            }
            else
            {
                g_LaserTileX++;
            }
        }
        else
        {
            if(g_LaserTileX <= LASER_COL_MIN)
            {
                g_LaserActive = FALSE;
                g_LaserErasing = FALSE;
                return;
            }
            else
            {
                g_LaserTileX--;
            }
        }
    }

    g_LaserStepDelay = LASER_STEP_DELAY;
}

void UpdateLaser()
{
    u8 row2;
    u8 row4;
    u8 row5;

    row2 = Keyboard_Read(2);
    row4 = Keyboard_Read(4);
    row5 = Keyboard_Read(5);

    UpdateActiveLaser();

    if(!g_LaserActive)
    {
        // Q, A, Z fire the left cannons.
        if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_Q))
        {
            StartLaser(LASER_ROW_TOP, TRUE);
        }
        else if(IS_KEY_PUSHED(row2, g_KeyRow2Prev, KEY_A))
        {
            StartLaser(LASER_ROW_MIDDLE, TRUE);
        }
        else if(IS_KEY_PUSHED(row5, g_KeyRow5Prev, KEY_Z))
        {
            StartLaser(LASER_ROW_BOTTOM, TRUE);
        }

        // O, K, M fire the right cannons.
        else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_O))
        {
            StartLaser(LASER_ROW_TOP, FALSE);
        }
        else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_K))
        {
            StartLaser(LASER_ROW_MIDDLE, FALSE);
        }
        else if(IS_KEY_PUSHED(row4, g_KeyRow4Prev, KEY_M))
        {
            StartLaser(LASER_ROW_BOTTOM, FALSE);
        }
    }

    g_KeyRow2Prev = row2;
    g_KeyRow4Prev = row4;
    g_KeyRow5Prev = row5;
}

//=============================================================================
// Meanie spawning and collision
//=============================================================================

u16 Rand16()
{
    u16 bit;

    // 16-bit LFSR.
    // Seed must never be 0.
    bit = ((g_Rand >> 0) ^ (g_Rand >> 2) ^ (g_Rand >> 3) ^ (g_Rand >> 5)) & 1;
    g_Rand = (g_Rand >> 1) | (bit << 15);

    return g_Rand;
}

u8 Rand8()
{
    return (u8)(Rand16() >> 8);
}

u8 RandRange(u8 min, u8 max)
{
    u16 r;
    u16 range;

    r = Rand16();
    range = (u16)max - (u16)min + 1;

    return min + (u8)(r % range);
}

void PickMeanieSideMove(Meanie* meanie)
{
    u8 distance;
    u8 choice;
    choice = RandRange(0, 2);

    if(choice == 0)
        distance = 8;
    else if(choice == 1)
        distance = 16;
    else
        distance = 32;

    meanie->MoveLeftFix = ((u16)distance) << FIX_SHIFT;

    // 1/2 chance left, 1/2 chance right.
    // Use the high bit, not bit 0, because bit 0 is weak in this tiny RNG.
    if(Rand8() & 0x80)
        meanie->VXFix = MEANIE_HSPEED_FIX;
    else
        meanie->VXFix = -MEANIE_HSPEED_FIX;
}

void SpawnMeanie(Meanie* meanie)
{
    u8 x;

    // Spawn from x coordinate 40 to 200.
    // This is pixel-based, not tile-column based.
    x = RandRange(MEANIE_SPAWN_MIN_X, MEANIE_SPAWN_MAX_X);

    // Set smooth fixed-point position.
    meanie->XFix = ((i16)x) << FIX_SHIFT;
    meanie->YFix = ((i16)MEANIE_SPAWN_Y) << FIX_SHIFT;

    // Smooth downward speed.
    meanie->VYFix = MEANIE_VSPEED_FIX;

    // Pick first left/right move.
    PickMeanieSideMove(meanie);

    Pawn_SetPosition(&meanie->PawnObj, x, MEANIE_SPAWN_Y);
    Pawn_Enable(&meanie->PawnObj);

    meanie->Tick = Rand8();
    meanie->Active = TRUE;
}

void TrySpawnMeanie()
{
    u8 i;

    // 1 in 32 chance.
    // Use high bits so spawn timing is less patterned.
    if((Rand8() & 0xF8) != 0)
        return;

    // Find one inactive meanie slot.
    for(i = 0; i < MEANIE_COUNT; i++)
    {
        if(!g_Meanies[i].Active)
        {
            SpawnMeanie(&g_Meanies[i]);
            return;
        }
    }
}

bool CheckMeaniePoint(i16 px, i16 py, u8* hitTx, u8* hitTy)
{
    u8 tx;
    u8 ty;
    u8 tile;

    if(px < 0 || py < 0)
        return FALSE;

    tx = (u8)(px >> 3);
    ty = (u8)(py >> 3);

    if(tx >= PLAYFIELD_W || ty >= PLAYFIELD_H)
        return FALSE;

    tile = GetMapTile(tx, ty);

    if(IsDestroyableTile(tile))
    {
        *hitTx = tx;
        *hitTy = ty;
        return TRUE;
    }

    return FALSE;
}

bool CheckMeanieCrashAt(Meanie* meanie, i16 x, i16 y)
{
    u8 tx;
    u8 ty;

    // Check four points inside the 8x8 sprite.
    // This lets the meanie crash into walls, cannons, cores, or floor tiles.
    if(
        CheckMeaniePoint(x + 1, y + 1, &tx, &ty) ||
        CheckMeaniePoint(x + 7, y + 1, &tx, &ty) ||
        CheckMeaniePoint(x + 1, y + 7, &tx, &ty) ||
        CheckMeaniePoint(x + 7, y + 7, &tx, &ty)
    )
    {
        DestroyMapTile(tx, ty);

        Pawn_Disable(&meanie->PawnObj);
        meanie->Active = FALSE;

        return TRUE;
    }

    return FALSE;
}

void DestroyMapTile(u8 tx, u8 ty)
{
    u8 tile;

    tile = GetMapTile(tx, ty);

    // Meanies destroy map tiles, except the repair robot.
    if(tile == TILE_REPAIR_ROBOT)
        return;

    if(tile == TILE_CORE)
    {
        g_hasHUDChanged = TRUE;
        g_ShowGoodHit = FALSE;

        DrawHUD();
        Print_DrawTextAt(23, 22, "  OVERRUN");

        g_GameOverToTitle = TRUE;
        g_GameOverSoundDone = FALSE;

        // Stop the fuel loop from restarting over the game-over sound.
        g_FuelSoundWanted = FALSE;
        g_FuelSoundRestart = FALSE;

        ayFX_Mute();

        // Sound no. 8 in the bank = index 7.
        // Priority 0 = highest priority.
        if(ayFX_PlayBank(7, 0) != AYFX_ERROR_NONE)
        {
            // If sound 8 is missing, don't softlock.
            g_GameOverSoundDone = TRUE;
        }

        return;
    }

    Energy -= 50;
    Print_DrawTextAt(23, 22, " SHIP HIT");
    g_ShowGoodHit = FALSE;
    DrawHUD();

    SetMapTile(tx, ty, TILE_EMPTY);
}

void UpdateOneMeanie(Meanie* meanie)
{
    i16 x;
    i16 y;
    i16 step;

    if(!meanie->Active)
        return;

    // If the current left/right move is finished, pick another.
    if(meanie->MoveLeftFix == 0)
    {
        PickMeanieSideMove(meanie);
    }

    // Move horizontally, but do not overshoot the chosen 8, 16 and 32 pixel distance.
    if(meanie->MoveLeftFix < MEANIE_HSPEED_FIX)
    {
        if(meanie->VXFix < 0)
            step = -(i16)meanie->MoveLeftFix;
        else
            step = (i16)meanie->MoveLeftFix;

        meanie->MoveLeftFix = 0;
    }
    else
    {
        step = meanie->VXFix;
        meanie->MoveLeftFix -= MEANIE_HSPEED_FIX;
    }

    // Apply smooth movement.
    meanie->XFix += step;
    meanie->YFix += meanie->VYFix;

    x = meanie->XFix >> FIX_SHIFT;
    y = meanie->YFix >> FIX_SHIFT;

    // Check collision BEFORE despawn.
    // This lets side walls, cannons, floors, and bottom-row cores get hit.
    if(CheckMeanieCrashAt(meanie, x, y))
        return;

    // Destroy meanie at screen limits.
    if(x <= MEANIE_MIN_X || x >= MEANIE_MAX_X || y >= MEANIE_BOTTOM_Y)
    {
        Pawn_Disable(&meanie->PawnObj);
        meanie->Active = FALSE;
        return;
    }

    Pawn_SetPosition(&meanie->PawnObj, (u8)x, (u8)y);

    Pawn_Update(&meanie->PawnObj);
    Pawn_Draw(&meanie->PawnObj);
}

void UpdateMeanie()
{
    u8 i;

    bool freeze = g_LaserActive || g_LaserErasing || g_GameOverToTitle;

    if(!freeze)
        TrySpawnMeanie();

    for(i = 0; i < MEANIE_COUNT; i++)
    {
        if(!g_Meanies[i].Active)
            continue;

        if(freeze)
        {
            Pawn_Draw(&g_Meanies[i].PawnObj);
            continue;
        }

        UpdateOneMeanie(&g_Meanies[i]);

        if(g_GameOverToTitle)
            return;
    }
}

//=============================================================================
// Title and win screen
//=============================================================================

void ShowTitleScreen()
{
    VDP_FillVRAM_16K(TILE_EMPTY, VDP_GetLayoutTable(), 768);

    Print_DrawTextAt(11, 3,  "BLUE BAKAS");
    Print_DrawTextAt(8, 4,  "FROM OUTER SPACE");

    Print_DrawTextAt(11, 14, "Hit a key");

    Print_DrawTextAt(5, 18, "(C) Duane Later, 1981");
    Print_DrawTextAt(0, 19, "(C) Commodore Business Machines");

    Print_DrawTextAt(5, 21, "MSX1 port by @thatbruh");
    Print_DrawTextAt(6, 22, "Developed with");

    {
        // White MSXgl logo in the new SCREEN 1 sheet: patterns 9-12.
        const u8 msxglLogoTiles[] = { 9, 10, 11, 12 };

        VDP_WriteVRAM_16K(
            msxglLogoTiles,
            VDP_GetLayoutTable() + (22 * 32) + 21,
            sizeof(msxglLogoTiles)
        );
    }

    WaitForCleanKeyPress();

    // Clear title text before loading the map.
    VDP_FillVRAM_16K(TILE_EMPTY, VDP_GetLayoutTable(), 768);
}

void ShowMeanerScreen()
{
    PSG_Mute();
    ayFX_Mute();

    // Reinitialize the SCREEN 1 pattern/font/color tables, then use the
    // cleared name table for the intermission message.
    InitGraphics();

    Print_DrawTextAt(3, 10, "WE'RE GONNA BE MEANER NOW");
    Energy = 1000;
    Score = 0;

    WaitForCleanKeyPress();

    InitGraphics();
    LoadLevel();
    ResetGameplayFlags();
}

//=============================================================================
// Other declares
//=============================================================================

void LoadMap() {
    // Copy the master template from ROM to the live RAM buffer
    Mem_Copy(g_Map, g_RamMap, PLAYFIELD_SIZE);

    // Write the 704-byte map to the top of the VRAM layout table (0x1800)
    VDP_WriteVRAM_16K(g_RamMap, VDP_GetLayoutTable(), PLAYFIELD_SIZE);
}

void LoadLevel()
{
    LoadMap();

    InitMeanie();
    InitFuel();
    InitExplosion();
    InitRepairRobot();
}

void DrawInt4At(u8 x, u8 y, u16 value)
{
    if(value >= 1000)
        Print_DrawIntAt(x, y, (i16)value);
    else if(value >= 100)
    {
        Print_DrawTextAt(x, y, " ");
        Print_DrawIntAt(x + 1, y, (i16)value);
    }
    else if(value >= 10)
    {
        Print_DrawTextAt(x, y, "  ");
        Print_DrawIntAt(x + 2, y, (i16)value);
    }
    else
    {
        Print_DrawTextAt(x, y, "   ");
        Print_DrawIntAt(x + 3, y, (i16)value);
    }
}

void DrawHUD()
{
    Print_DrawTextAt(0, 22, "ENERGY=");
    DrawInt4At(8, 22, Energy);

    Print_DrawTextAt(0, 23, "SCORE=");
    DrawInt4At(7, 23, Score);

    if(Energy == 0)
    {
        Print_DrawTextAt(23, 22, "NO ENERGY");
    }
    else if(g_ShowGoodHit)
    {
        Print_DrawTextAt(23, 22, " GOOD HIT");
    }
}

//=============================================================================
// Main program
//=============================================================================

void main()
{
    InitGraphics();
    ShowTitleScreen();
    LoadLevel();
    InitSound();

    while(1)
    {
        Halt();

        if(g_GameOverToTitle)
        {
            if(g_GameOverSoundDone)
            {
                ayFX_Mute();
                PSG_Mute();

                g_GameOverToTitle = FALSE;
                g_GameOverSoundDone = FALSE;

                Score = 0;
                Energy = 1000;

                g_FuelSoundWanted = FALSE;
                g_FuelSoundRestart = FALSE;

                ResetGameplayFlags();

                InitGraphics();
                ShowTitleScreen();
                LoadLevel();
            }

            continue;
        }

        UpdateRepairRobot();
        UpdateLaser();
        UpdateExplosion();
        UpdateMeanie();

        if(g_GameOverToTitle)
            continue;

        UpdateFuel();

        if(g_hasHUDChanged)
        {
            DrawHUD();
            g_hasHUDChanged = FALSE;
        }
    }
}
