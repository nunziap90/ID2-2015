##Prime visualizzazioni in Processing

Lo sketch di riferimento è [getLineIn](http://code.compartmental.net/minim/minim_method_getlinein.html) 
della libreria [Minim](http://code.compartmental.net/tools/minim/).


```
// SKETCH PROVE

import ddf.minim.*; // indico la libreria

Minim minim; // ?
AudioInput in; // ??

void setup() {
  size(400, 400); //come renderizza processing (default sketch P3D, oppure P2D o PDF);

  minim = new Minim(this); //oggetto minim

  // use the getLineIn method of the Minim object to get an AudioInput
  // in = minim.getLineIn(Minim.STEREO); linea originale
  in = minim.getLineIn(Minim.STEREO); // modalità input: stereo
} // fine setup

void draw() {

  background(255);
  for (int i = 0; i < in.bufferSize () - 1; i++) {

    //RECT
    noStroke();
    fill(255, 0, 0);
    //rect(200, height/2-50, in.left.get(i)*100, 100); //aumento su width
    //rect(200, height/2-50, in.left.get(i), 100); //non posso non moltiplicare per qualcosa la variabile interna
    //rect(width/2-50, height/2, 100, in.left.get(i)*100); //aumento su height
    
    // RECT AI VERTICI (tutto speculare)
    //rect(0, 0, in.left.get(i)*100, 100);
    //rect(400, 0, -in.left.get(i)*100, in.left.get(i)*100);
    //rect(400, 400, in.left.get(i)*100, in.left.get(i)*100);
    //rect(0, 400, in.left.get(i)*100, -in.left.get(i)*100);
    
    //ELLIPSE
    //ellipse(width/2,height/2,50+in.left.get(i)*100,50); //start visibile, aumento su asseX
    //ellipse(width/2,height/2,50,50+in.left.get(i)*100); //start visibile, aumento su asseY
    ellipse(width/2, height/2, in.left.get(i)*500, in.left.get(i)*500);
    
  } //fine for
} //fine draw

```
