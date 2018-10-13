/// @description spt_screenshake(magnitude,length)
///@argument The magnitude and remain value of the camera's shake.
///@argument This dictates the number of frames for which the camera shakes.
with(obj_camera) {
	if(argument0 > shake_remain) {
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}