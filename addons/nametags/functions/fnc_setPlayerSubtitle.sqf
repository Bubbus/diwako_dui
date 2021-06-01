/*
 * Author: Bubbus
 *
 * If a player sets their title, we should sanitise the input to avoid injection of tags into the nametag's structured text control.
 * It should be mostly harmless if someone *does* inject tags, but the behaviour is unsupported and may be used for griefing (e.g. filling your screen with huge text).
 * Sanitisation is done here rather than on a per-render basis to preserve steady-state performance.
 * To keep it simple, all that is done currently is to remove angled brackets and backslashes - should be sufficient to avoid tag injection and special characters.
 *
 * Arguments:
 * 0: _title <STRING>
 *     The user-provided title text to be cleaned up and used under their name on the nametag.
 *
 * Return Value:
 * Title <STRING>
 *     The input string after sanitisation is performed.
 *
 * Example:
 * ["I'm so <t font='LCD14'>RETRO</t>"] call diwako_dui_nametags_fnc_setPlayerTitle
 * -> "I'm so t font='LCD14'RETRO/t"
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_title"];

private _validParts = _title splitString "<>\";
private _newTitle = _validParts joinString "";

GVAR(safeTitle) = _newTitle;

_newTitle
