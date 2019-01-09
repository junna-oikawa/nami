PImage img;
PImage nami_2;
PImage nami_3;
PImage nami_4;

int x1 = 0;
int x2 = -860;
int x3 = 0;
int x4 = -860;


void setup(){
  
  img = loadImage("nami.PNG");
  nami_2 = loadImage("nami_2.PNG");
  nami_3 = loadImage("nami_3.PNG");
  nami_4 = loadImage("nami_4.PNG");
  
  size(640, 480);
  colorMode(RGB, 255);
  background(0, 0, 0);  
  frameRate(10);
}

void draw(){
  
  fill(0);
  rect(0, 0, 640, 480);
  
   image(nami_4, x4, 0);
  image(nami_3, x3, 0);
  image(nami_2, x2, 0);
  image(img, x1, 0);
  
  x1 -= 10;
  x2 += 10;
  x3 -= 10;
  x4 += 10;
  
  
}
