void setup(){
  size(400,400);
}

int r = 11;
int i = 1;
int k = 1;

void draw(){
  //float c=random(1,254); // per attacchi epilettici assicurati
  //background(100,10,c);
  background(0);
  noStroke(); 
  
  for(float angle = 0.0; angle < 2*PI; angle = angle + PI/6){
    float x=200+sin(angle+i)*(r);
    float y=200+cos(angle+i)*(r);
    fill(255,i,x);
    ellipse(x,y,70,70);
  }
  
  for(float angle = 0.0; angle < 2*PI; angle = angle + PI/6){
    float x=200+sin(angle+i)*(r);
    float y=200+cos(angle+i)*(r);
    fill(255,x,255);
    ellipse(x,y,50,50);
  }
  
  for(float angle = 0.0; angle < 2*PI; angle = angle + PI/6){
    float x=200-sin(angle+i)*(r);
    float y=200+cos(angle+i)*(r);
    fill(10,70,200);
    ellipse(x,y,10,10);
  }
    
  r = r+k;
  i = i+k;
  
  if(r==150){
    k=-1; 
  }if(r==10){
    k=1;
  }
    
}
