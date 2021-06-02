/*
 * Author: Bubbus
 *
 * Maintain a player's title variable.  The title variable is purely client-only, so it cannot be handled serverside by fnc_cacheLoop.
 * Ensures value doesn't drift from player choice - handles setting changes and a *very* basic level of resiliency against variable modification on non-BE/arbitrary addon servers.
 *
 * Public: No
 */

#include "script_component.hpp"

// Should only run clientside, managing the local player only.
if !(hasInterface) exitWith {};

[{ call FUNC(maintainTitleLoop); }, [], 2] call CBA_fnc_waitAndExecute;

if !(local player) exitWith {};

// Only update the networked var if needed.  Ensure value does not drift from player choice.
private _currentTitle = player getVariable QGVAR(customTitle);

if (isNil "_currentTitle" or {_currentTitle isNotEqualTo GVAR(safeTitle)}) then
{
    player setVariable [QGVAR(customTitle), GVAR(safeTitle), true];
};
