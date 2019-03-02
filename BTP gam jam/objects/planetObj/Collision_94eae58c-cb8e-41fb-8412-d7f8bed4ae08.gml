/// @description Insert description here
// You can write your code in this editor
if(!isDamaged)
{
	if(size > other.size)
	{	
		other.hp--;
	}
	size--;
	other.size++;
	
	other.spd -= (size/10);
	other.image_xscale += sqrt(0.5);
	other.image_yscale += sqrt(0.5);

	image_xscale -= sqrt(1);
	image_yscale -= sqrt(1);
	
	isDamaged = true;
	alarm[0] = 60;
}
