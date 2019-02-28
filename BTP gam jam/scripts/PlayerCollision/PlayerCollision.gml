
//horizontal collision
if (place_meeting(x + hspd,y,planetObj))
{
	while (!place_meeting(x + sign(hspd),y,planetObj))
	{
		x+=sign(hspd);
	}
	hspd = 0;
}
x += hspd;

//verticle collision

if (place_meeting(x,y + vspd,planetObj))
{
	while (!place_meeting(x,y + sign(vspd),planetObj))
	{
		y +=sign(vspd);
	}
	vspd = 0;
}
y += vspd;