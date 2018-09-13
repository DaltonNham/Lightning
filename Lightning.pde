int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int x;
int y;
int red;
int green;
int blue;
void setup()
{
  size(300,300);
  strokeWeight(5);
  background();
}
void draw()
{
	red = ((int)(Math.random() * 255));
	green = ((int)(Math.random() * 255));
	blue = ((int)(Math.random() * 255));
	x = ((int)(Math.random() * 9) + 1);
	y = ((int)(Math.random() * 9) + 1);
	endY = startY + y;
	if (startX > 150) {
		endX = startX - x;
	}
	else {
		endX = startX + x;
	}
	stroke(red,green,blue);
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
}
void mousePressed()
{

}

