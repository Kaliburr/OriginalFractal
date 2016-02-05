public void setup(){
	size(700,700);
	background(255);
	stroke(255,238,0);
	//fill(68,233,233);
	fill(255,0,0);
}
public void draw(){
	myFractal(0,350,1400);
}
public void myFractal(float x, float y, float siz){
	ellipse(x,y,siz,siz);
	if(siz>10){
		pushMatrix();
		translate(x+siz/4,y-siz/64);
		rotate(-PI/4);
		myFractal(0,0,siz/2);
		popMatrix();
		pushMatrix();
		translate(x-siz/4,y-siz/64);
		rotate(PI/4);
		myFractal(0,0,siz/2);
		popMatrix();
	}
}
