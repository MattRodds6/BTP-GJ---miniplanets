/// @description Insert description here
// You can write your code in this editor
other.hp--;
if(other.hp <= 0)
{	
	for(var i = 0; i < random_range(1,5); i++)
	{
		instance_create_layer(x + random_range(-other.sprite_width/2,-other.sprite_width/2),
							  y + random_range(-other.sprite_width/2,-other.sprite_width/2),
							  "bulletLayer", spiritObj);
	}
}
instance_destroy(self);