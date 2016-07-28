float x;
float y;
float easing = 0.005;
int dragX ,dragY;
int cx1=45;
int cy1=45;
int x1=780;
boolean text1=false;
PImage mouseCursor;


void setup() {
  size(800, 420); 
  smooth(); 
  strokeWeight(1); 
  
  mouseCursor=loadImage("smilememe.png");
}

void draw() { 
  background(255,80,71);
  
   if ((keyPressed == true) && (key == 'A')) {
    fill(0);
    rect(100,50,600,320);
  } else {//otherwise display ellipse
    noStroke();
    fill(84,255,159);
    ellipse(85, 95, cx1, cy1);
    ellipse(dragX,dragY,30,30);
    ellipse(650,355,20,20);
  }
   
    noStroke();
    rect(x1,300,15,200);
    //rect for BACKSPACE &ENTER
  
    
    if(text1==true){
    textSize(58);
    text("Hello World!", 90, 55); 
    //text test
  }
  
  //ori code *easingball
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  stroke(1);
  fill(238,233,233);
  ellipse(x, y, 70, 70);
  //mousedata
  ellipse(mouseX+5, mouseY+5, 45, 45);
  
  
  //mousecursor
  if (mouseX < 400) {
    cursor(mouseCursor, 0 , 0); //display image if x less than 400
  } else {
    cursor(CROSS);//else display cross
  }}
  
 
 
  void mousePressed(){
      if (mouseButton == LEFT) {
      cx1=cx1+5;
      cy1=cy1+5;  //increase size
  } else if (mouseButton == RIGHT){
      cx1=cx1-3;
      cy1=cy1-3;  //decrease size
 
  }
  }
  
  //mouseevent
  void mouseDragged(){
  dragX=mouseX;
  dragY=mouseY;
  //change position of ellipse when mouse is dragged
  }
 
 
  void keyPressed(){
    
    if (keyCode == BACKSPACE) {
      x1 = x1 - 5;
      //move rect to left
    } else if(keyCode== ENTER){
      x1= x1 + 5;
      //move rect to right
  } 
    
    if((key== 'Q') || (key=='q')){
      text1=true;}
    }//keyboard data: display text when press 
  
  void keyReleased(){
      text1=false;//disappears when release key
  }



    
    
    
    

  

