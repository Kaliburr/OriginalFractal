public void setup(){
	size(700,700);
	stroke(255,238,0);
	noLoop();
}
public void draw(){
	background(60);
	myFractal(0,350,1400);
}
public void mousePressed(){
	redraw();
}
public void myFractal(float x, float y, float siz){
	triangle(x+siz,y+siz,x+siz*3,y+siz,x+siz*2,y+siz*2);
	ellipse(x,y,siz,siz);
	int x1,x2,x3,a;
	x1=(int)(Math.random()*256);
	x2=(int)(Math.random()*256);
	x3=(int)(Math.random()*256);
	fill(x1,x2,x3);
	a=(int)(Math.random()*20);
	if(siz>a){
		pushMatrix();
		translate(x+siz/4,y-siz/64);
		rotate(-PI/4);
		fill(x1-22,x2+15,x3-52);
		myFractal(0,0,siz/2);
		popMatrix();
		pushMatrix();
		translate(x-siz/4,y-siz/64);
		rotate(PI/4);
		myFractal(0,0,siz/2);
		popMatrix();
	}
}
