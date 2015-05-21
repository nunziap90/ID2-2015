//
// NOISE VIBRANCY VISUALIZER
// © Daniele @ Fupete for the course ID2-2015 @ UnirSM
// github.com/fupete
// Made for educational purposes, MIT License, May 2015, San Marino
// 

/*
 * VISUALIZE NOISE AROUND YOUR PC
 * Noise vibrancy visualizer.
 * Each second you see a radius.
 * Each radius is one volume detection done with your pc microphone.
 * Each radius length stands for the intensity of that second's volume.
 * In the end you have a visualization of one minute.
 * At the end of a minute, all is erased to start again.
 *
 * REFERENCES
 * 'getLineIn' - Minim library
 * 'Rotating more than one offset circle' 
 * by wintersac2 - Processing Forum, Sept 2014
 * forum.processing.org/two/discussion/7163/rotating-more-than-one-offset-circle
 * thanks to Giuseppe D'Ambrosio
 *
 */

// GLOBAL VARIABLES
int size = 600 ; // per la finestra di visualizzazione 
float angle = radians(-84) ; // primo raggio ad ogni run
/* 
 Zero per processing e la sua impostazione cartesiana significa 90° convenzionali (3 o'clock).
 Io voglio che la visualizzazione inizi a 0° (12 o'clock).
 Ecco perché il valore negativo. 
 */
float VOL ; // input originale
float volume = 0 ; // input mappato per visualizzazione
float offsetraggio = radians (6) ; // offset angolare
int inc = 0 ; // variabile di incremento
int frame = 0 ;

import ddf.minim.* ; // richiamo la libreria
Minim minim ; 
AudioInput in ;

void setup() {

  size (600, 600) ;
  background (255) ;

  minim = new Minim (this) ; // oggetto minim
  in = minim.getLineIn (Minim.MONO) ;

  frameRate (60) ; // frame al secondo
} // end set up



void draw() {

  inc = inc + 10 ; // variabile di incremento
  // inc++ ; è equivalente

  if (inc == 60) { 
    float VOL = in.right.level() * 100; // valore originale del volume dal mic del pc
    volume= map(VOL, 0, 100, 0, 290); // come lo visualizzo
    /*
     I valori audio in input sono troppo piccoli per riuscire ad esser visualizzati.
     Moltiplicando ciò che rileva il microfono (VOL) per un valore empirico (100) e mappando sulla finestra di visualizzazione 
     quello stesso valore risultante (volume), riesco ad ottimizzare la visualizzazione.
     L'intento è mantenere il raggio massimo nella finestra di visualizzazione (280) 
     creando la giusta combinazione di valori nella mappatura seguente.
     */

    // STRINGA VALORI INPUT PRIMA E DOPO LA MAPPATURA
    print (" VOL (originale) = ") ;
    print (in.right.level()) ; // valori VOL
    print (" // volume (mappato) = ") ;
    print (volume) ; // valori VOL mappato
    println () ;

    // NON USCIRE DALLA FINESTRA DI VISUALIZZAZIONE
    if (volume*2 > 290) {
      volume = 290/2 ;
    } // end if non uscire 

    // DIMENSIONAMENTO RAGGIO
    float x = size/2 + cos (angle) * volume*2 ; // variazione x 
    float y = size/2 + sin  (angle) * volume*2 ; // variazione y
    /* 
     moltiplico volume *2
     per migliorarne la visibilità
     */
    float s = map (volume, 0, 290, 0.4, 4) ; // variazione spessore in base all'intensità
    s = abs (s) ; 
    strokeWeight (s) ;
    /* 
     in float s
     faccio in modo d'aver sempre un valore assoluto 
     per evitare errori di software
     */
    strokeCap (ROUND) ;
    strokeJoin (ROUND) ;

    // SU QUESTI PARAMETRI DISEGNA
    line (size/2, size/2, x, y) ; 
    angle += offsetraggio ; // come incremento
    inc = 0 ; // resetta a questo punto
  } // end if incremento
  
  // RIGENERA NON RIGENERA
  if (frame > 60) {
    background (255) ; // disegno bg bianco
    frame = 0; // resetta a questo punto
  }  // end if rigenera
} // end draw




/*
 Aggiornato il modo in cui si adatta il raggio alla finestra per non farlo uscire dalla visualizzazione.
 Ora non si ha più l'errore degli sketch precedenti in cui capitava che il raggio uscisse dalla finestra di visualizzazione.
 
 Ora il valore visualizzato rappresenta il volume percepito dal microfono. 
 Ma è come se attivassimo il microfono una volta al secondo. Se in quell'attimo non vi è rumore,
 la visualizzazione sarà annullata. 
 Sarebbe bene fare la media dei valori di "float = VOL" lungo i 60 frame 
 e mappare poi su quel valore medio la variabile "float = volume".
 Comporterebbe una rappresentazione più omogenea e più vicina alla mia idea.
 */
 
