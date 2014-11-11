void setup(){
  size(400,400);
}

void draw(){
  println(mouseX);
  background(255,255,255);
  
  if(mouseX<270 && mouseX>130){ // parte centrale
  
    // logo: comunità 
    stroke(0);
    strokeWeight(20);
    ellipse(200,200,100,100);
    noFill();
    arc(200,50,100,100,0,PI); //alto
    arc(200,350,100,100,PI,TWO_PI); //basso
    arc(50,200,100,100,-HALF_PI,HALF_PI); //sinistra
    arc(350,200,100,100,HALF_PI,PI+HALF_PI); //destra
    
  } else if (mouseX>269){ // parte destra
     
      // logo: vitalità
      stroke(0);
      strokeWeight(20);
      ellipse(200,200,100,100);
      noFill();
      arc(300,50,100,100,0,PI); //alto
      arc(100,350,100,100,PI,TWO_PI); //basso
      arc(50,100,100,100,-HALF_PI,HALF_PI); //sinistra
      arc(350,300,100,100,HALF_PI,PI+HALF_PI); //destra
      
    } else { // parte sinistra
        
        // logo: naturale
        stroke(0);
        strokeWeight(20);
        ellipse(200,200,100,100);  
        noFill();
        arc(200,300,100,100,0,PI); //basso
        arc(200,100,100,100,PI,TWO_PI); //alto
        arc(300,200,100,100,-HALF_PI,HALF_PI); //destra
        arc(100,200,100,100,HALF_PI,PI+HALF_PI); //sinistra
        
    }  
}
