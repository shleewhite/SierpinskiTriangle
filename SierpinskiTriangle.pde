public void setup()
{
	size(800, 800);
	background(0);
}
public void draw()
{
	mouseDragged();
	fill((int)(Math.random()*255));
	sierpinski(0, 800, 800);
}
public void mouseDragged(){
	if (mousePressed == true)
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(mouseX, mouseY, 80);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if (len > 20)
	{
		noStroke();
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
	else 
	{
		noStroke();
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
}