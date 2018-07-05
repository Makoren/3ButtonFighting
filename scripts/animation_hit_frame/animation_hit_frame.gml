///@arg frame
///@arg id_optional
var _frame = argument[0];
var _id = argument_count > 1 ? argument[1] : id;

// The id is only needed if you need to check the animation frame of a different object.
// Otherwise, you can call this script with only the "frame" parameter.

var _speed = global.one_second/sprite_get_speed(_id.sprite_index);
return (_id.image_index >= _frame+1 - _id.image_speed/_speed) && (_id.image_index < _frame+1);