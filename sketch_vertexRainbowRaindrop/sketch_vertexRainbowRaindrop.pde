void setup(){
 size(500,500);
 background(0);
 noStroke();
}

void teardropDraw(color col, float x, float y, float s){
  beginShape();
  fill(col);
  vertex(width/2, 0);        //top of teardrop
  vertex((0.05*width)+(width/2), 0.10*height);      //rhs of teardrop curve start
  bezierVertex((0.1*width)+(width/2), 0.21*height, (width/2)-(0.1*width), 0.21*height,(width/2)-(0.05*width), 0.10*height);
  scale(1+s);
  translate(0+x,0+y);
  endShape(CLOSE);
}

//void draw(){
  //float s = random(0.1,0.0055*width);                     // Multiplier s to randomise size
  //float x = random(-width/2);
  //float y = random(height/4);                           // x and y to randomise position
  //float r = random(40, 255);
  //float g = random(40, 255);
  //float b = random(40, 255);
  //color col = color(r, g, b);
  //teardropDraw(col,x,y,s);
//}