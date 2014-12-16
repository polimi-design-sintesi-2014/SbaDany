/*--------------------------------------------
  Montagnard-Degar : logo e pattern generator
  --------------------------------------------
  
  LEGENDA
  - elemento A : elemento centrale
  - elementi B : elemento in alto a sinistra e in basso a destra
  - elementi C : elemento in alto a destra e in basso a sinistra
  
  COMANDI da tastiera
  - q : seleziona elemento
  - w : cambia simbolo dell'elemento selezionato
  - e : cambia colore dell'elemento selezionato

*/-------------------------------------------


void setup(){
  size(400,400);   
}


// variabili globali
int elemSel = 0;
int A = 2;  // indicano la posizione nell'array coloreArray[]
int B = 4;
int C = 5;
int sSel_A = 1;  // indicano i simboli selezionati per i rispettivi elementi
int sSel_B = 1;
int sSel_C = 1;


void draw(){
  
  int modulo = 40;  // il modulo della matrice del logo
  int numA = 4;  // il numero di simboli di tipo valore (posizione A)
  int numB = 5;  // il numero di simboli di tipo natura (posizioni B e C)
  int numC = numB;
  
  // per far ciclare le i simboli
  if(sSel_A > numA) { sSel_A=1; }
  //else if(sSel_A < 1) { sSel_A = numA; }
  
  if(sSel_B > numB) { sSel_B=1; }
  //else if (sSel_B < 1) { sSel_B = numB; }
  
  if(sSel_C > numC) { sSel_C=1; }
  //else if (sSel_C < 1) { sSel_C = numC; }  

  int[] coloreArray = new int[15];  // un array contenente i colori
  //inizializzazione array
  coloreArray[0] = #913c8e;  // viola
  coloreArray[1] = #e1196b;
  coloreArray[2] = #e87ead;
  coloreArray[3] = #234a93;  // blu
  coloreArray[4] = #076ab3;
  coloreArray[5] = #4a8fb5;
  coloreArray[6] = #039881;  // azzurri verdolini
  coloreArray[7] = #41b9c0;
  coloreArray[8] = #9ad3e1;
  coloreArray[9] = #177e49;  // verdi
  coloreArray[10] = #57ad46;
  coloreArray[11] = #87c280;
  coloreArray[12] = #e75035; // arancioni
  coloreArray[13] = #f4a335;
  coloreArray[14] = #f1bd5b;
  
  // per far ciclare i colori
  int numColori = coloreArray.length;
  if(A >= numColori) { A=0; }
  if(B >= numColori) { B=0; }
  if(C >= numColori) { C=0; }
  
  // inizializzazione colori (colori di default)
  int coloreA = coloreArray[A];  // indicano il valore in quella posizione
  int coloreB = coloreArray[B];
  int coloreC = coloreArray[C];
  
  background(255);
  strokeWeight(modulo/3);
  strokeCap(PROJECT);
  
  // visualizza QUALE elemento hai selezionato
  fill(0);
  noStroke();
  if (elemSel == 0){
    ellipse(width/2,height/2,100,100);
  } else if(elemSel == 1){
    ellipse(width/2-2*modulo,height/2-2*modulo,100,100);
    ellipse(width/2+2*modulo,height/2+2*modulo,100,100);
  } else if(elemSel == 2){
    ellipse(width/2+2*modulo,height/2-2*modulo,100,100);
    ellipse(width/2-2*modulo,height/2+2*modulo,100,100);
  } 
  
  
  // elemento A selezionato
  switch(sSel_A){
    case 1:
      fill(coloreA);
      stroke(coloreA);
      sPace(width/2,height/2,modulo);
      break;
    case 2:
      fill(coloreA);
      stroke(coloreA);
      sGentilezza(width/2,height/2,modulo);
      break;
    case 3:
      fill(coloreA);
      stroke(coloreA);
      sSangue(width/2,height/2,modulo);
      break;
    case 4:
      fill(coloreA);
      stroke(coloreA);
      sOnesta(width/2,height/2,modulo);
      break;
  }
 
      
   // elemento B selezionato
   switch(sSel_B){
     
     case 1:
      fill(coloreB);
      stroke(coloreB);
      sBufalo(width/2-2*modulo,height/2-2*modulo,modulo/2);
      sBufalo(width/2+2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 2:
      fill(coloreB);
      stroke(coloreB);
      sElefante(width/2-2*modulo,height/2-2*modulo,modulo/2);
      sElefante(width/2+2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 3:
      fill(coloreB);
      stroke(coloreB);
      sAlbero(width/2-2*modulo,height/2-2*modulo,modulo/2);
      sAlbero(width/2+2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 4:
      fill(coloreB);
      stroke(coloreB);
      sRadici(width/2-2*modulo,height/2-2*modulo,modulo/2);
      sRadici(width/2+2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 5:
      fill(coloreB);
      stroke(coloreB);
      sAltopiano(width/2-2*modulo,height/2-2*modulo,modulo/2);
      sAltopiano(width/2+2*modulo,height/2+2*modulo,modulo/2);
      break;
      
   }
   
   
   // elemento C selezionato
   switch(sSel_C){
     
     case 1:
      fill(coloreC);
      stroke(coloreC);
      sBufalo(width/2+2*modulo,height/2-2*modulo,modulo/2);
      sBufalo(width/2-2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 2:
      fill(coloreC);
      stroke(coloreC);
      sElefante(width/2+2*modulo,height/2-2*modulo,modulo/2);
      sElefante(width/2-2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 3:
      fill(coloreC);
      stroke(coloreC);
      sAlbero(width/2+2*modulo,height/2-2*modulo,modulo/2);
      sAlbero(width/2-2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 4:
      fill(coloreC);
      stroke(coloreC);
      sRadici(width/2+2*modulo,height/2-2*modulo,modulo/2);
      sRadici(width/2-2*modulo,height/2+2*modulo,modulo/2);
      break;
     case 5:
      fill(coloreC);
      stroke(coloreC);
      sAltopiano(width/2+2*modulo,height/2-2*modulo,modulo/2);
      sAltopiano(width/2-2*modulo,height/2+2*modulo,modulo/2);
      break;
      
   }
     
}


// INPUT //

void keyPressed() {
  
  if (key == 'q' || key == 'Q') {  // cambia elemento selezionato
    elemSel = elemSel + 1;  // elemento selezionato
    if(elemSel > 2) {
      elemSel = 0;
    }
  } else if(key == 'w' || key == 'W') {  // cambia simbolo dell'elem selezionato
   if (elemSel == 0){
      sSel_A = sSel_A + 1;
   } else if (elemSel == 1){
      sSel_B = sSel_B + 1;
   } else if (elemSel == 2){
      sSel_C = sSel_C + 1;
   }
  } else if(key == 'e' || key == 'E') {  // cambia colore dell'elem selezionato
   if (elemSel == 0){
      A = A + 1;
   } else if (elemSel == 1){
      B = B + 1;
   } else if (elemSel == 2){
      C = C + 1;
   }
  } 
  
}


// SIMBOLI VALORI //

void sPace(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro+2*u,xCentro,yCentro);
  line(xCentro+2*u,yCentro+2*u,xCentro,yCentro);
  line(xCentro-2*u,yCentro+u,xCentro,yCentro-u);
  line(xCentro+2*u,yCentro+u,xCentro,yCentro-u);
  line(xCentro-2*u,yCentro,xCentro,yCentro-2*u);
  line(xCentro+2*u,yCentro,xCentro,yCentro-2*u);
  pushMatrix();
  translate(xCentro,yCentro-2*u);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();
  pushMatrix();
  translate(xCentro,yCentro);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();      
}

void sGentilezza(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro-2*u,xCentro+2*u,yCentro+2*u);
  line(xCentro+2*u,yCentro-2*u,xCentro-2*u,yCentro+2*u);
  pushMatrix();
  translate(xCentro-u,yCentro-u);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();
  pushMatrix();
  translate(xCentro+u,yCentro-u);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();    
}

void sSangue(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro-2*u,xCentro-u,yCentro-u);
  line(xCentro+2*u,yCentro-2*u,xCentro+u,yCentro-u);
  line(xCentro-u,yCentro-u,xCentro-2*u,yCentro);
  line(xCentro+u,yCentro-u,xCentro+2*u,yCentro);
  line(xCentro-2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro+2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro,yCentro,xCentro-u,yCentro+u);
  line(xCentro,yCentro,xCentro+u,yCentro+u);
}

void sOnesta(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro+2*u,xCentro-u,yCentro+u);
  line(xCentro+2*u,yCentro+2*u,xCentro+u,yCentro+u);
  line(xCentro-2*u,yCentro-2*u,xCentro-u,yCentro-u);
  line(xCentro+2*u,yCentro-2*u,xCentro+u,yCentro-u);
  line(xCentro,yCentro-2*u,xCentro-2*u,yCentro);
  line(xCentro,yCentro-2*u,xCentro+2*u,yCentro);
  line(xCentro-2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro+2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro,yCentro-u,xCentro-u,yCentro);
  line(xCentro,yCentro-u,xCentro+u,yCentro);
  line(xCentro-u,yCentro,xCentro,yCentro+u);
  line(xCentro+u,yCentro,xCentro,yCentro+u);
}


// SIMBOLI NATURA //

void sBufalo(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro+2*u,xCentro,yCentro);
  line(xCentro+2*u,yCentro+2*u,xCentro,yCentro);
  line(xCentro-2*u,yCentro,xCentro,yCentro-2*u);
  line(xCentro+2*u,yCentro,xCentro,yCentro-2*u);
  pushMatrix();
  translate(xCentro,yCentro);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();
}

void sElefante(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro-2*u,xCentro,yCentro);
  line(xCentro,yCentro,xCentro+2*u,yCentro-2*u);
  line(xCentro-2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro,yCentro+2*u,xCentro+2*u,yCentro); 
}

void sAlbero(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro+2*u,xCentro,yCentro);
  line(xCentro+2*u,yCentro+2*u,xCentro,yCentro);
  pushMatrix();
  translate(xCentro,yCentro-2*u);
  rotate(PI/4);
  rect(0,0,u*sqrt(2),u*sqrt(2));
  popMatrix();
}

void sRadici(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro-2*u,xCentro,yCentro);
  line(xCentro,yCentro,xCentro+2*u,yCentro-2*u);
  line(xCentro-2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro,yCentro+2*u,xCentro+2*u,yCentro); 
  line(xCentro-2*u,yCentro+2*u,xCentro-u,yCentro+u);
  line(xCentro+2*u,yCentro+2*u,xCentro+u,yCentro+u);
}

void sAltopiano(int xCentro, int yCentro, float u){
  line(xCentro-2*u,yCentro,xCentro,yCentro+2*u);
  line(xCentro-u,yCentro-u,xCentro+u,yCentro+u);
  line(xCentro,yCentro-2*u,xCentro+2*u,yCentro);
  line(xCentro,yCentro+2*u,xCentro+2*u,yCentro);
  line(xCentro-u,yCentro+u,xCentro+u,yCentro-u);
  line(xCentro-2*u,yCentro,xCentro,yCentro-2*u);
}

