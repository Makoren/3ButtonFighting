#region parameters
///@arg knockback
///@arg direction
///@arg id
///@arg attack
var _knockback = argument0;
var _direction = argument1;
var _id = argument2;
var _attack = argument3;
#endregion

var _hitbox = instance_create_layer(x, y, "Instances", o_hitbox);
_hitbox.knockback_ = _knockback * _direction;
_hitbox.image_xscale = _direction;
_hitbox.owner_ = _id;
_hitbox.alarm[0] = 1;
_hitbox.attack_ = _attack;

return _hitbox;