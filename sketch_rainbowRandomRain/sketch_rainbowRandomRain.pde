int step=10;

void setup() {
  size(500, 500);
  noStroke();
}

void teardropDraw(color col) { 
  PShape teardrop, arc_, triangle_;
  float middleArcX = width/2;
  float middleArcY = height/2;
  float arcWidth = 25;
  float arcHeight = 30;
  teardrop = createShape(GROUP);                       // Create the shape group
  teardrop.beginShape();
  arc_ = createShape(ARC, middleArcX, middleArcY, arcWidth, arcHeight, 0, PI);
  arc_.setFill(col);
  triangle_ = createShape(TRIANGLE, middleArcX-(arcWidth/2), middleArcY, middleArcX, middleArcY-(1*arcWidth), middleArcX+(arcWidth/2), middleArcY); 
  triangle_.setFill(col);
  teardrop.addChild(arc_);                            // Add the two "child" shapes to the parent group
  teardrop.addChild(triangle_);
  teardrop.endShape();
  shape(teardrop,(-middleArcX+ random(step)),(-middleArcY+random(step)));
} 

void draw() {
  float R = random(40, 255);
  float G = random(40, 255);
  float B = random(40, 255);
  color col = color(R, G, B);
  teardropDraw(col);
  step+=10;
}