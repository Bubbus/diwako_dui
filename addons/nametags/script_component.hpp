#define COMPONENT nametags
#define COMPONENT_BEAUTIFIED Nametags
#include "\z\diwako_dui\addons\main\script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_NAMETAGS
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_NAMETAGS
    #define DEBUG_SETTINGS DEBUG_SETTINGS_NAMETAGS
#endif

#include "\z\diwako_dui\addons\main\script_macros.hpp"

#define IDC_NAMETAG 1337006
#define MAX_TITLE_CHARS 100

#define POS_X 0.5 - (pixelW * 256)
#define POS_Y 0.5 - pixelH
#define POS_W pixelW * 512
#define POS_H pixelH * 256
#define GET_POS_X (POS_X)
#define GET_POS_Y (POS_Y)
#define GET_POS_W (POS_W)
#define GET_POS_H (POS_H)

#define FONT_SCALE_FACTOR pixelH * 64

/* ResetSettings
    profileNamespace setVariable ['igui_diwako_dui_nametags_x', nil];
    profileNamespace setVariable ['igui_diwako_dui_nametags_y', nil];
    profileNamespace setVariable ['igui_diwako_dui_nametags_w', nil];
    profileNamespace setVariable ['igui_diwako_dui_nametags_h', nil];
*/
