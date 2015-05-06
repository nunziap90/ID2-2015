int i = 10;
int punto; 
int x = 10; //posizione orizzontale 
int y = 50; //posizione verticale
int timer=0;

int[] giallo = { //posizioni cerchi gialli
  110, 450, 790, 110, 1150, 1340
};
int[] azzurro = { //posizioni cerchi azzurri 
  150, 370, 530, 550, 570, 860, 900, 1130
};
int[] rosso = { //posizioni cerchi rossi 
  230, 410, 630, 960, 1250
};

color colorGiallo = color(249, 178, 51); //colore giallo 
color colorAzzurro = color(54, 169, 225); //colore azzurro 
color colorRosso = color(151, 25, 20); //colore rosso 


void setup() {

  size(1850, 500); //finestra
}

void draw () {

  background(180);

  circle(giallo, colorGiallo, 70); //grandezza cerchio giallo 
  circle(azzurro, colorAzzurro, 50); //grandezza cerchio azzurro
  circle(rosso, colorRosso, 100); //grandezza cerchio rosso 


  fill(0);
  stroke(0);
  ellipse(x, 233, 10, 10); //costruzione ellisse 
  x = x+1; //movimento ellisse 

  rect(30, 225, 3, 15); //rettangoli per dvisione tempo 
  rect(470, 225, 3, 15); 
  rect(910, 225, 3, 15);
  rect(1350, 225, 3, 15);
  rect(1807, 225, 3, 15);

  stroke(0);

  for (int x = 30; x <= 1810; x += 3) { //costruzione fila di linee
    line (x, 225, x, 240);
    fill(87, 87, 87);
  }
}   


void circle(int[] array, color col, int dim) { //elenco di dati:circle
//colore, dimensione 
  for (int j=0; j<array.length; j++) { //lunghezza 
    if (x>array[j]) {
      for (int i=0; i<dim; i+=10) {
        noStroke(); 
        fill(col, 100);
        ellipse(array[j], 233, i, i);
      }
      fill(0);
    }
  }
} 

