PShape teardrop, arc_, triangle_;
void setup() {
  size(500, 500);
  noStroke();
  float middleArcX=(width/2);
  float middleArcY=(height/2);
  float arcWidth=25;
  float arcHeight=30;
  teardrop = createShape(GROUP);        // Create the shape group
  arc_ = createShape(ARC, middleArcX, middleArcY, arcWidth, arcHeight, 0, PI);      // Make shapes
  //arc_.setFill(color(255));
  triangle_ = createShape(TRIANGLE, middleArcX-(arcWidth/2), middleArcY, middleArcX, middleArcY-(1*arcWidth), middleArcX+(arcWidth/2), middleArcY); 
  //triangle_.setFill(color(0));
  teardrop.addChild(arc_);          // Add the two "child" shapes to the parent group
  teardrop.addChild(triangle_);
}

void draw() {
  background(204);
  float step=10;
  translate((0+step), (0+step));
  shape(teardrop); // Draw the group
}