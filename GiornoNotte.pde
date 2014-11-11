/* ESERCIZIO: usa vertex, if, for */
/* TRAGITTO CASA-LAVORO */

int sole=300; //altezza sole
int i=1;
int passi=60; //y omino

void setup(){
  size(400,400);
}

void draw(){
  background(301-sole); //301 e non 300 senò sfarfalla
  
  fill(255,255,255);
  ellipse(200,sole,30,30); //sole
  
  fill(0);
  rect(0,250,400,150); //orizzonte
  beginShape(); //casetta
  vertex(40,250);
  vertex(40,220);
  vertex(60,200); //punta tetto
  vertex(80,220);
  vertex(80,250);
  endShape(CLOSE);
  rect(300,50,60,200); // palazzo
  
  sole-=i;
  if(sole<100){
    i=-1;
  }if(sole>300){
    i=1;
  }
  
  //notte, finestre acesse
  if(sole>280&&sole<=301){
    for(int x_finestre=310; x_finestre<351; x_finestre+=10){
      for(int y_finestre=70; y_finestre<250; y_finestre+=20){
        noStroke();
        fill(255,255,255);
        ellipse(x_finestre,y_finestre,3,3); //finestre palazzo
      }
    }
    ellipse(50,230,3,3); //finestre casa
    ellipse(70,230,3,3);
  }
  
  //omino che va al lavoro e torna a casa
  if(sole<240&&sole>150){
    if(i==1){ //andata
      passi+=3;
      ellipse(passi,245,10,10);
    } else { //ritorno
      passi-=3;
      ellipse(passi,245,10,10);
    }
  }
  println(sole);
}
