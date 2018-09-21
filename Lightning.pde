int startX = 150;
int startY = 0;
int endX = 0;
int endY = 0;
int x;
int y;
int yellow;
int cloud = 0;
int cloudX;
int grey;
int spark1;
int spark2;
void setup()
{
  size(300,300);
  background(27, 0, 71);
}
void draw()
{
	spark1 = ((int)(Math.random()*26) + 25);
	spark2 = ((int)(Math.random()*26) + 25);
	yellow = ((int)(Math.random() * 104) + 150);
	x = ((int)(Math.random() * 49) + 1);
	y = ((int)(Math.random() * 19) + 10);
	endY = startY + y;
	strokeWeight(5);
	if (startX > 150) { //lightning strike
		endX = startX - x;
	}
	else {
		endX = startX + x;
	}
	stroke(yellow, yellow, 50);
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	if (endY > 300) { //sparks
		fill(yellow,yellow,50,100);
		stroke(yellow,yellow,50,100);
		ellipse(endX,endY,50,50);
		line(endX,endY,(endX-spark1),(endY-spark1));
		line(endX,endY,(endX+spark2),(endY-spark2));
	}
	while (cloud <= 300){ //clouds
    	grey = ((int)(Math.random()* 151));
    	fill(grey,grey,grey);
    	stroke(grey,grey,grey);
    	ellipse(cloud,0,50,50);
    	cloudX = ((int)(Math.random() * 51));
    	cloud = cloud + cloudX;
  	}
}
void mousePressed()
{
	redraw();
}
