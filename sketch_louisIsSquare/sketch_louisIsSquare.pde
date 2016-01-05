 
 void setup() {
       size(400, 400);
       smooth();
       stroke(0);
       background(255, 0);
     }
      
     void draw() {
       fill(255, 1);
       rect(0, 0, width, height);
       translate((width/2), (height/2));
       rotate(radians(frameCount));
       //The system variable frameCount contains the number of frames that have been displayed 
       //since the program started. Inside setup() the value is 0, after the first iteration of draw it is 1
       fill(255);
       rect(0, 0, 100, 100);
       fill(0);
       text("Louis",50,50);
       
     }