void setup() {
  size(500, 500);
  noStroke();
}

void teardropDraw(color col, float x, float y) { 
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
  shape(teardrop, -middleArcX + x, -middleArcY + y);
} 

void draw() {
  float x = random(width);
  float y = random(height);
  float r = random(40, 255);
  float g = random(40, 255);
  float b = random(40, 255);
  color col = color(r, g, b);
  teardropDraw(col, x, y);
}