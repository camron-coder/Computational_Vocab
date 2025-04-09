
void setup() {
      size(900, 900);
      
}

void draw() {
//add your own code here to make shapes : )
    
        fill(random(255),random(255),random(255));
        stroke(random(255),random(255),random(255));
        strokeWeight(random(10));
        emissive(random(255),random(255),random(255));
      int randomNumber = ceil(random(50));
      rect (random(displayWidth), random(displayHeight),
      random(displayWidth/randomNumber),
      random(displayHeight/randomNumber)); 
       circle(random(displayWidth), random(displayHeight),
      random(displayWidth/randomNumber)); 
      ellipse(random(displayWidth), random(displayHeight),random(displayWidth), random(displayHeight));
      
      triangle(random(displayWidth), random(displayHeight),random(displayWidth), random(displayHeight),random(displayWidth), random(displayHeight));
}

void mousePressed() {
      noLoop();
       textSize(50);
      text("image saved!",0,80);
      saveFrame(timeStamp() + ".png");
}

void mouseReleased() {
      loop();
}

String timeStamp() {
      int d = day();    
      int m = month();  
      int y = year();   
      int s = second(); 
      int n = minute(); 
      int h = hour();    
      
     return String.valueOf(m) + "-" + String.valueOf(d)+ "-" + 
     String.valueOf(y)+ "_" + String.valueOf(h) + "." + String.valueOf(n) 
     + "." + String.valueOf(s);
    }
