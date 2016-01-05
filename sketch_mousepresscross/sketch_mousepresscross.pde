
   
 
 void setup() {
       size(400, 400);
       frameRate(12);
       smooth();
       
       //stroke(255);
     }
      
     void draw() {
       float centreX =width/2;
       float centreY =height/2;
       float topleftX =width-width;
       float topleftY =height-height;
       float toprightX =width;
       float toprightY =height-height;
       float botleftX =width-width;
       float botleftY =height;
       float botrightX =width;
       float botrightY =height;
       //background(0, 101, 189 );
       strokeWeight(25);
       stroke(255, 10);
       line(topleftX, topleftY, botrightX, botrightY);
       line(toprightX,toprightY,botleftX,botleftY);
     }
     
     void mousePressed() {
       background(192, 64, 0);
     }