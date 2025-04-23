
color yellow=#FFFF00;
color lightblue=#03CEFF;
color green=#00FF00;
color black=#000000;


void setup(){
  size(1000,800);
  background(lightblue);
  gressland();
 plants();
  
}
 ////////////////////////////////////////////gress land 
void gressland(){
  int x=0;
  int y=200;
  while (y<800){
    fill(0,random(30,255),0);
    rect(x,y,100,100);
    x+=100;
    if (x>=1000){
      x=0;
      y+=100;
    }
   
  }
}

///////////////////////////////////////////plant
void plants(){
while(y<800){
    planthead();
    x+=100;
    if (x>1000){
      x=0;
    y+=100;
  }
}
}

void plant(int x, int y)[ 
  pushMatrix();
  translate(x,y);
  fill (green);
  //root
  rect(35,25,30,50);
  //mouse
  rect(50,25,random(25,50),random(10,25));
  //head
  circle (50,25,random(20,50));
  //eye
  fill (black);
  circle(50,25,10);
 leaves();
 popMatrix();
}
  void leaves(){
  fill (green);
  int count=0;
  while (count<4){
  ellipse(50,100,20,10);
  rotate(radians(random(0,360)));
  count+=1; 
  }
  }
  
  /////////////////////////////////////////////////light
