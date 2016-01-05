int diam = 10;
float centX, centY;
float twist;

void setup() {
  size(500,300);
  frameRate(24);
  smooth();
  background(180);
  centX=width/2;
  centY=height/2;
  twist=PI/16.0;
  stroke(0);
  strokeWeight(5);
  fill(255,50);
}

void draw(){
   
  if (diam<=400){
    background(170);
    translate (centX,centY);
    rotate(twist);
    ellipse(0,0,diam+50,diam);
    diam+=10;
    twist+=PI/8;
  }
}