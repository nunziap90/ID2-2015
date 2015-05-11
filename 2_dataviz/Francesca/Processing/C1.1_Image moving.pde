PImage right, left, up, down, rgtup, rgtdown, lftup, lftdown; //named after their directions
int xpos1, xpos2, xpos, ypos1, ypos2, ypos; 
int imgw = 30; //resize the width of the image
int imgh = 30; //resize the height of the image

void setup() {
  imageMode(CENTER);
  size (600, 600);
  right = left = up = down = rgtup = rgtdown = lftup = lftdown = loadImage("1921681664.png"); //loads the same image since this is an exercise
  xpos = xpos1 = xpos2 = width/2; //this might look inappropriate but works fine with the directions
  ypos = ypos1 = ypos2 = height/2;//same as above
}

//makes the images move right, left, up, down and on the diagonals one time
void draw() {
  background(0); //redraws the bg on each frame
  image(right, xpos1, ypos, imgw, imgh);
  xpos1 ++;
  image(left, xpos2, ypos, imgw, imgh);
  xpos2 --;
  image(up, xpos, ypos1, imgw, imgh);
  ypos1 --;
  image(down, xpos, ypos2, imgw, imgh);
  ypos2 ++;
  image(rgtup, xpos1, ypos1, imgw, imgh);
  xpos1 ++;
  image(rgtdown, xpos2, ypos2, imgw, imgh);
  xpos2 --;
  image(lftup, xpos1, ypos2, imgw, imgh);
  ypos1 --;
  image(lftdown, xpos2, ypos1, imgw, imgh);
  ypos2 ++;

//makes the images repeat the trick!
  if  (xpos1>width || ypos1>height ||xpos2>width || ypos2>height) { 
    xpos1 = width/2;
    ypos1 = height/2;
    xpos2 = width/2;
    ypos2 = height/2;
  }
}
