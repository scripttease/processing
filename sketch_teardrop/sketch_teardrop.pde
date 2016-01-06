void setup(){
  size(500, 500);
  smooth();
}
void draw(){
  noStroke();
  float middleArcX=(width/2);
  float middleArcY=(height/2);
  float arcWidth=25;
  float arcHeight=30;
  arc(middleArcX, middleArcY, arcWidth, arcHeight, 0, PI);
  triangle(middleArcX-(arcWidth/2), middleArcY, middleArcX, middleArcY-(1*arcWidth), middleArcX+(arcWidth/2), middleArcY);     
}