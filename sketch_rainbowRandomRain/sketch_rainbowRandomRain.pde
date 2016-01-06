PShape teardrop, arc_, triangle_;
  int step=10;
  float middleArcX;
  float middleArcY;
  float arcWidth=25;
  float arcHeight=30;
  float randomFillR;
  float randomFillG;
  float randomFillB;
  int iter=1;

void setup() {
  size(500, 500);
  middleArcX=(width/2);
  middleArcY=(height/2);
  noStroke();
}

void draw() {
  //middleArcX=(width/2);
  //middleArcY=(height/2);
  //if (middleArcX<=width && middleArcY<=height){
  float R=randomFillR+iter;
  float G=randomFillG+iter;
  float B=randomFillB+iter;
  randomFillR=random(0,255);
  randomFillG=random(0,255);
  randomFillB=random(0,255);
  teardrop = createShape(GROUP);                       // Create the shape group
  teardrop.beginShape();
  arc_ = createShape(ARC, middleArcX, middleArcY, arcWidth, arcHeight, 0, PI);      
  arc_.setFill(color(R,G,B));
  triangle_ = createShape(TRIANGLE, middleArcX-(arcWidth/2), middleArcY, middleArcX, middleArcY-(1*arcWidth), middleArcX+(arcWidth/2), middleArcY); 
  triangle_.setFill(color(R,G,B));
  teardrop.addChild(arc_);                            // Add the two "child" shapes to the parent group
  teardrop.addChild(triangle_);
  //teardrop.setFill(color(255,0,255));
  teardrop.endShape();
  //teardrop.setFill(color(0,0,0));
  shape(teardrop,(-middleArcX+ random(step)),(-middleArcY+random(step)));  
  step+=10;
  iter+=1;
  //}
}    