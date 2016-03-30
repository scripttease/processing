void setup() {
  size(500, 500);
  background(255);
  noStroke();
  fill(0);
  
  float anchorX = width/2;
  float anchorY = height;
  float widthFactor = 0.05;
  float heightFactor = 0.1;
  float s;                    //scalar for size


beginShape();
vertex(anchorX, 0);        //top of teardrop
vertex(anchorX+(0.05*width), 0.10*height);      //rhs of teardrop curve start
bezierVertex((0.1*width)+(width/2), 0.21*height, (width/2)-(0.1*width), 0.21*height,(width/2)-(0.05*width), 0.10*height);
//scale(0.1);

//translate(-width/2+10,-50);      //lower bound xy translate to appear on screen at scale 1
//translate(width/2+10,height-50);    //upper bound xy translate to appear on screen at scale 1
endShape(CLOSE);

}