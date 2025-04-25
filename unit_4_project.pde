
color yellow=#FFFF00;
color lightblue=#03CEFF;
color green=#00FF00;
color black=#000000;

 
  
void setup(){
  size(1000,800);
  background(lightblue);
  gressland();
  plants();
  light();
}  


 ////////////////////////////////////////////gress land 
void gressland(){
  int gx=0;
  int gy=200;
  while (gy<800){
    fill(0,random(30,255),0);
    rect(gx,gy,100,100);
    gx+=100;
    if (gx>=1000){
      gx=0;
      gy+=100;
    }
   
  }
}

///////////////////////////////////////////plant
void plants(){
  int psx=0;
  int psy=200;
while(psy<800){
    plant(psx,psy);
    psx+=100;
    if (psx>1000){
     psx=0;
    psy+=100;
  }
}
}

void plant(int px, int py)[ 
  pushMatrix();
  translate(px,py);
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
  ////leaves
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
  void light(){
    int count=0;
    while(count<20){
    lightcircle(random(0,1000),random(0,200),random(30,100));
    lighttriangle(random(0,1000),random(0,200),cd2);
    count+=1;
  }
  
  //light circle on the back
  void lightcircle(int cx, int cy, int cd1){
    int cd2=cd1;
  stroke (yellow);
  fill (white);
  while (cd1>10){
   circle(cx,cy,cd1);
   cd-=10;
  }
  }
  //light triangles in the middle
void lighttriangle(int cx, int cy, int cd2){
  fill (yellow);
  int count=8;
  while (count<8){
  triangele(cx-cd2/2,cy,cx,cy+cd2/2,cx+cd2/2,cy);
  rotate(radians(45));
  count+=1; 
  }
  }
