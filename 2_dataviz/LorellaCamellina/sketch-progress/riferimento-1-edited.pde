

float   angle  =   0.00 ; 
float  offset  =  120 ; 
float   scalar  =  100 ; // dimensionamento raggio
float   speed   =  0.1 ; 

void setup  () {
  size   (240, 240) ;  
  smooth  () ; // antialiasing
} //end setup

void  draw  () { 
  
  background (255) ; 
  
  float  x  =  offset + cos (angle) * scalar ; // variabilità x
  float  y  =  offset + sin  (angle) * scalar ; // variabilità y
  
  line  ( width/2, height/2,  x, y) ; 
  
  angle  +=  speed;
  // angle = angle + speed ;
} //end draw
