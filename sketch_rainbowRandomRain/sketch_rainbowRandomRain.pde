void setup() {
  size(500, 500);
  background(255);
  noStroke();
}

void teardropDraw(color col, float x, float y, float s) { 
  PShape teardrop;
  PShape arc_;
  PShape triangle_;
  float middleArcX = width/2;
  float middleArcY = height/2;
  float arcWidth = s*0.05*width;
  float arcHeight = s*0.06*height;
  teardrop = createShape(GROUP);                       // Create the shape group
  arc_ = createShape(ARC, middleArcX, middleArcY, arcWidth, arcHeight, 0, PI);
  arc_.setFill(col);
  triangle_ = createShape(TRIANGLE, middleArcX-(arcWidth/2), middleArcY, middleArcX, middleArcY-(1*arcWidth), middleArcX+(arcWidth/2), middleArcY); 
  triangle_.setFill(col);
  teardrop.addChild(arc_);                            // Add the two "child" shapes to the parent group
  teardrop.addChild(triangle_);
  shape(teardrop, -middleArcX + x, -middleArcY + y);
} 

void draw() {
  float s = random(0.0055*width);                     // Multiplier s to randomise size
  float x = random(width);
  float y = random(height);                           // x and y to randomise position
  float r = random(40, 255);
  float g = random(40, 255);
  float b = random(40, 255);
  color col = color(r, g, b);
  teardropDraw(col, x, y, s);
  fill(255,1);
  rect(0,0,width,height);                            // Transparent white rectangle mimics teardrop fadeout
}

//removed cannot end group shape beginshape endshape bug
//added size randomiser, 
//fading background,