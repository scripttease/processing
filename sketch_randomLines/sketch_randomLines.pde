void setup() {
  size(500,300);
  stroke(0);
}
  void draw(){
    fill(255,10);
    rect(0,0,500,300);
    fill(0);
    //text("Louis",width/2,height/2);
    int step = 10;
    float lastX = -100;
    float lastY=-100;
    float y=50;
    int borderX =20;
    int borderY=100;
    for(int x=borderX; x<=width-borderX; x+=step){
      y=borderY + random(height-2*borderY);
      if(lastX > -50){
        line(x,y,lastX,lastY);
      }
      lastX=x;
      lastY=y;
  }
  }