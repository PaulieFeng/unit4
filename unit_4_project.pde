
color yellow=#FFFF00;
color lightblue=#03CEFF;


void setup(){
  size(1000,800);
  background(lightblue);
  gressland();
  
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




}
