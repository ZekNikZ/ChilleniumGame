/// @description Check shape of player.
// Check for triangle.
if (obj_player.shp_triangle == 1) && (obj_player.shape != SHAPE.TRIANGLE)
{
	display_tri = true;
}
else display_tri = false;

// Check for circle.
if (obj_player.shp_circle == 1) && (obj_player.shape != SHAPE.CIRCLE)
{
	display_cir = true;
}
else display_cir = false;

//Check for square
if (obj_player.shape != SHAPE.SQUARE)
{
	display_squ = true;
}
else display_squ = false;