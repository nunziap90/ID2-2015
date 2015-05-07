

float angle = 0.0;
float offset = 60;
float scalar = 30;
float speed = 0.05;
 
void setup() {
size(820, 820);
smooth();
}
 
void draw() {
  background(200);
float x = offset + cos(angle) * scalar;
float y = offset + sin(angle) * scalar;

noFill();
ellipse( x, y, 40, 40);
angle += speed;

 
}
