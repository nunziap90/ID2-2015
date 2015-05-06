##Dataviz

Il mio Dataviz è essenzialmente una visualizzazione del rumore. 
Lo scopo è restituire la vivacità connessa al concetto di rumore e la sua variabilità temporale.

#####PROPOSTA

La visualizzazione arriva dall'evoluzione di quella che era stata una delle prime proposte di visualizzazione dati.
In quel caso venivano prese in considerazione tre variabili, il tempo, la provenienza del suono e la sua intensità.
Il risultato erano una serie di vettori divergenti, con stesso punto di applicazione: il centro di una circonferenza. 
Per approfondimenti, si rimanda alla Visualizzazione 1 in 
[Dataviz-1](https://github.com/LoreCame/ID2-2015/blob/master/2_dataviz/LorellaCamellina/dataviz-1.md).

#####DESIDERATA

Andando avanti ho voluto avvicinarmi alla "situazione sonora" della sede UniRSM, considerando aspetti come 
la continuità dei dati disponibili e la loro estrema mutevolezza temporale. 
Ho quindi semplificato le variabili come di seguito:

- tempo (in particolare immagino 360°=60''=1');
- intensità (se R=raggio maggiore e r=raggio minore, intensità rumore R > intensità rumore r).

Dovendo sfruttare il materiale attualmente a mia disposizione per giungere ad un prototipo funzionante di Dataviz
ho fatto in modo di utilizzare il microfono del mio portatile come fonte dati per la visualizzazione.

L'idea è di poter osservare secondo per secondo l'intensità del rumore.
Trascorsi 60", lo sotrico del minuto appena passato si azzera per lasciar posto a quello del 
minuto entrante.

![1](http://i.imgur.com/uEaXdCG.jpg?1)

_Caso 1_

![2](http://i.imgur.com/WXXS3YH.jpg?1)

_Caso 2_

![3](http://i.imgur.com/rRIahzs.jpg?1)

_Caso 3_

In ogni esempio, la prima serie di "esplosioni" rappresenta tre frame della visualizzazione ricercata in seguito 
con strumenti di programmazione, prelevati in tre differenti step di avanzamento. 

In particolare, nel _Caso 1_ al nono, quarantaquattresimo e sessantesimo secondo. 
Nel _Caso 2_ al quindicesimo, trentanovesimo e cinquantaseiesimo. 
Nel _Caso 3_ al ventesimo, quarantesimo e sessantesimo.

La seconda serie di circonferenze invece è solo uno strumento di lettura nel quale si evidenzia il rapporto fra
l'intensità relativa ad un determinato secondo ed il massimo dell'intensità visualizzabile, 
che poi sarebbe il raggio della circonferenza stessa. Nel _Caso 3_ è stata ipotizzata la massima intensità visualizzabile 
per tutti e sessanta i secondi di rilevamento.

#####SKETCH RIFERIMENTO 1

Il primo sketch di riferimento è [getLineIn](http://code.compartmental.net/minim/minim_method_getlinein.html) 
della libreria [Minim](http://code.compartmental.net/tools/minim/).

Serve ad immettere in Processing l'input audio proveniente dal microfono del portatile.

L'obiettivo è stato capirne il funzionamento e provare a controllare con lui delle visualizzazioni minime.
E' stato Utile anche per riuscire a vedere in stringa il tipo di dati numerici con cui stavo lavorando, 
i loro moduli e la loro reattività agli input sonori. 

A quanto pare il microfono del mio portatile è abbastanza sensibile al **rumore di fondo, al vociferio, 
al sottofondo sonoro**, cosa che lascia ben sperare per un futuro Dataphys basato proprio su questi aspetti.

```

import ddf.minim.* ; // richiamo la libreria

Minim minim; 
AudioInput in ;

int i ; // in print

void setup() {

  size(400, 400) ;

  minim = new Minim(this) ; // oggetto minim
  in = minim.getLineIn(Minim.MONO); // modalità input mono
} // end setup

void draw() {

  println(in.left.get(i)); // stringa dati

    background(200);
  smooth(); // antialiasing
  for (int i = 0; i < in.bufferSize () - 1; i++) { 
    // non ho capito bene in.bufferSize()

    // RECT - commenta ellipse o resta coperto
    noStroke();
    fill(255);
    ellipse(width/2, height/2, in.left.get(i)*500, in.left.get(i)*500);
  } // end for
} // end draw

```

video !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#####SKETCH RIFERIMENTO 2

L'altro [sketch di riferimento](http://forum.processing.org/two/discussion/7163/rotating-more-than-one-offset-circle)
nasce come rappresentazione di 
>"_one roatating circle followed by a trail of other circles_". 

Io l'ho adattato alle mie necessità ed ho ottenuto così una specie di lancetta senza riferimento temporale.
Mi interessavano il mix di incrementabilità dell'angolo di rotazione, l'offset di spostamento rotazionale 
e la gestione della velocità.

```
float angle = 0.00 ; 
float offset  = 120 ; 
float scalar  = 100 ; // dimensionamento raggio
float speed = 0.1 ; 

void setup () {
  size (240, 240) ;  
  smooth () ; // antialiasing
} //end setup

void  draw  () { 
  
  background (255) ; 
  
  float x = offset + cos (angle) * scalar ; // variabilità x
  float y = offset + sin  (angle) * scalar ; // variabilità y
  
  line  ( width/2, height/2,  x, y) ; 
  
  angle  +=  speed;
  // angle = angle + speed ;
} //end draw

```

video !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#####PROTOTIPO DATAVIZ

In breve, ho mescolato i due sketch precedenti creando una visualizzazione non basata tanto sulla successione temporale 
di secondi trascorsi ma sulla successione temporale dei frame. Ogni sessanta frame (ogni secondo) la visualizzazione 
si rigenera. Giocando con l'opacità del background si provoca un effetto
[P.o.V.](http://en.wikipedia.org/wiki/Persistence_of_vision) farlocco, che lascia all'osservatore la possibilità di 
confrontare ciò che ascolta/ha appena ascoltato con ciò che vede/ha appena visto, insegnadogli a leggere la grammatica 
della rappresentazione (relazione rumore-raggio, relazione spessore raggio-intensità rumore).

```
//
// NOISE VIBRANCY VISUALIZER
// © Daniele @ Fupete for the course ID2-2015 @ UnirSM
// github.com/fupete
// Made for educational purposes, MIT License, May 2015, San Marino
// 

/*
 * VISUALIZE NOISE AROUND YOUR PC
 * Actual noise vibrancy visualization.
 * Radius length stands for intensity.
 *
 * REFERENCES
 * 'getLineIn' - Minim library
 * 'Rotating more than one offset circle' 
 * by wintersac2 - Processing Forum, Sept 2014
 * forum.processing.org/two/discussion/7163/rotating-more-than-one-offset-circle
 *
 */


int size = 600 ;
float angle = 0.00 ; 
float vibrancy ; // dimensionamento raggio
float speed = 0.1 ; // velocità

import ddf.minim.* ; // richiamo la libreria
Minim minim ;
AudioInput in ;


void setup () {

  size (size, size) ; 
  background(255) ;

  minim = new Minim (this) ; // oggetto minim
  in = minim.getLineIn (Minim.MONO) ; // input mono
  fill(255,20) ; // opacità
  smooth() ; // antialiasing
  frameRate(60) ; // frame al secondo
} //end setup

void  draw () { 

  vibrancy = map ((in.left.get(0)*5), 0.01, 5, 0, 270) ; 
  // scalar = in.left.get(0) ;
  
  /*
  raggio = in.left.get(0) ;
   I valori audio in input 
   sono troppo piccoli per riuscire ad esser visualizzati.
   Moltiplicando ciò che rileva il microfono per un valore empirico (5)
   e mappando quello stesso valore risultante
   riesco ad ottimizzare la visualizzazione.
   L'intento è mantenere il raggio massimo 
   nella finestra di visualizzazione (size 600)
   creando la giusta combinazione di valori nella mappatura.
   */

  if (frameCount % 60 == 0) { // se #frame dall'avvio/frameRate=0 allora

    background(255,20) ; // rigenera output visivo (ogni sec)
    println(in.left.get(0)) ; // e stampa input numerico (ogni sec)
  } //end if
  
  strokeWeight(0); // per evitar d'usare sul rect la strokeWeight successiva
  rect (0, 0, size, size) ; 

  float x = size/2 + cos (angle) * vibrancy ; // variazione x
  float y = size/2 + sin  (angle) * vibrancy ; // variazione y
  float s = map (vibrancy, 0.01, 270, 0.2, 6); // variazione strokeWeight
  s = abs(s); 
  /* 
   in float s
   faccio in modo d'aver sempre un valore assoluto 
   per evitare errori di software
  */
  strokeWeight(s); 
  strokeCap(ROUND); 
  strokeJoin(ROUND);

  line (size/2, size/2, x, y); 

  angle  +=  speed; // incremento dell'angolo
  // equivalente angle = angle + speed ;
} //end draw

```
Il risultato non è esattamente ciò che avevo immaginato in precedenza. La differenza è nella frequenza di visualizzazione: 
quel che avevo immaginato sarebbe stato estremamente più lento e noioso. Qui invece la reattività della visualizzazione 
al cambiamento dei dati è praticamente immediata e molto più accattivante.

[Video-1](https://www.dropbox.com/s/8m8etar2g4v1ojk/video-1.wmv?dl=0)

[Video-2](https://www.dropbox.com/s/8m8etar2g4v1ojk/video-1.wmv?dl=0)

video !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


