/* cielo stellato */

size(400,400);
background(40);

int i=0; //stop per le stelle
int numeroStelle=100;
float r=random(1,5);
float x=random(1,400);
float y=random(1,300);
int xOrizzonte=0;
int yOrizzonte=300;
int xOrizzonte2=0;
int yOrizzonte2=250;

// STELLE 

noStroke();
fill(255,255,255);
if(i<numeroStelle){
  for(int g=0; g<numeroStelle; g++){
    r=random(1,5);
    x=random(1,400);
    y=random(1,350);
    ellipse(x,y,r,r);
  }
  i=i+1;
}

// LUNA

noStroke();
fill(255,255,255);
x=random(30,370);
y=random(30,200);
ellipse(x,y,20,20);

// ORIZZONTE RANDOM dietro

fill(30); // colore a caso per risaltare sul grigio
noStroke();
  
beginShape();
vertex(xOrizzonte2,yOrizzonte2);
for(xOrizzonte=0; xOrizzonte2<450; xOrizzonte2+=int(random(10,20))){
  //vertex(200,200); // vertice di prova
  yOrizzonte2+=int(random(-10,10));
  vertex(xOrizzonte2,yOrizzonte2); 
}
vertex(401,250);
vertex(401,401);
vertex(-1,401);
endShape(CLOSE);
  
// ORIZZONTE RANDOM davanti

fill(20); // colore a caso per risaltare sul grigio
noStroke();
  
beginShape();
vertex(xOrizzonte,yOrizzonte);
for(xOrizzonte=0; xOrizzonte<450; xOrizzonte+=int(random(10,20))){
  //vertex(200,200); // vertice di prova
  yOrizzonte+=int(random(-10,10));
  vertex(xOrizzonte,yOrizzonte); 
}
vertex(401,300);
vertex(401,401);
vertex(-1,401);
endShape(CLOSE);
