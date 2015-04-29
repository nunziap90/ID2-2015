##Prime visualizzazioni in Processing

Lo sketch di riferimento è [getLineIn](http://code.compartmental.net/minim/minim_method_getlinein.html) 
della libreria [Minim](http://code.compartmental.net/tools/minim/).

Mi serve ad immettere in Processing l'input audio proveniente direttamente dal microfono del mio portatile.

L'obiettivo per ora è capirne il funzionamento e provare a controllare visualizzazioni minime.
Utilissimo per riuscire a vedere il tipo di dati numerici con cui ho a che fare, 
che cosa esce dal microfono del mio portatile e cosa viene introdotto in Processing.

```
// SKETCH PROVE

import ddf.minim.*; // indico la libreria

Minim minim; // ?
AudioInput in; // ??
int i; //dichiaro la var da usare in print
void setup() {
  size(400, 400); //come renderizza processing (default sketch P3D, oppure P2D o PDF);

  minim = new Minim(this); //oggetto minim

  // use the getLineIn method of the Minim object to get an AudioInput
  // in = minim.getLineIn(Minim.STEREO); linea originale
  in = minim.getLineIn(Minim.MONO); // modalità input: stereo
} // fine setup

void draw() {
  
  print(" left ");
  print(in.left.get(i)); // input stereo sin
  
  print(" / ");
  
  print(" right ");
  println(in.right.get(i)); // input stereo dx
  //voglio vedere i dati

  // MONO i valori left&right sono uguali
  // due valori per left e due valori per right
  // ma uguali
  // e variano in base al variare dell'intensità del suono
  
  // STEREO i valori left&right sono diversi
  // un valore per left ed un valore per right
  // che variano in base al variare dell'intensità del suono
  // ed alla provenienza
  
  // ma mono&stereo non sono relativi all'output?
  
  // sono valori molto bassi 
  // ecco perc in.left.get(i) va moltiplicato per qualcosa
  // ai fini di una visualizzazione più sensibile

  background(255);
  for (int i = 0; i < in.bufferSize () - 1; i++) { 
    // non ho capito bene in.bufferSize()

    // RECT - commenta ellipse o resta coperto
    noStroke();
    fill(255, 0, 0);
    //rect(200, height/2-50, in.left.get(i)*100, 100); //aumento su width
    //rect(200, height/2-50, in.left.get(i), 100); //devo moltiplicare per qualcosa la variabile
    //rect(width/2-50, height/2, 100, in.left.get(i)*100); //aumento su height
    
    // RECT AI VERTICI (tutto speculare)
    //rect(0, 0, in.left.get(i)*100, 100);
    //rect(400, 0, -in.left.get(i)*100, in.left.get(i)*100);
    //rect(400, 400, in.left.get(i)*100, in.left.get(i)*100);
    //rect(0, 400, in.left.get(i)*100, -in.left.get(i)*100);
    
    // ELLIPSE
    //ellipse(width/2,height/2,50+in.left.get(i)*100,50); //aumento su asseX
    //ellipse(width/2,height/2,50,50+in.left.get(i)*100); //aumento su asseY
    ellipse(width/2, height/2, in.left.get(i)*500, in.left.get(i)*500);
    
  } //fine for
} //fine draw
```
