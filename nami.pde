PImage img;
PImage nami_2;
PImage nami_3;
PImage nami_4;

int WavePositionX1 = 0;
int WavePositionX2 = -860;
int WavePositionX3 = 0;
int WavePositionX4 = -860;


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
  
   image(nami_4, WavePositionX4, 0);
  image(nami_3, WavePositionX3, 0);
  image(nami_2, WavePositionX2, 0);
  image(img, WavePositionX1, 0);
  
  WavePositionX1 -= 10;
  WavePositionX2 += 10;
  WavePositionX3 -= 10;
  WavePositionX4 += 10;
  
    if(WavePositionX1 < -840){
    WavePositionX1 = 0;
  }
  if(WavePositionX3 < -840){
   WavePositionX3 = 0; 
  }
  if(WavePositionX2 > 0){
   WavePositionX2 = -805; 
  }
  if(WavePositionX4 > 0){
   WavePositionX4 = -805; 
  }
  
  
}
