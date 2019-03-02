/// @function SpawnEnemy(numEnemies, x, y);
/// @description This will spawn a number of enemies.
/// @param {real} numEnemies - The number of enemies to spawn.
/// @param {real} x		     - x coordinate.
/// @param {real} y			 - y coordinate.

var numEnemies = argument0;
var X = argument1;
var Y = argument2;

for(var i = 0; i < numEnemies; i++)
{
	instance_create_layer(X, Y, "character", enemyObj);
}