PImage img;
PImage nami_2;
PImage nami_3;
PImage nami_4;

int WavePositionX1 = 0;
int WavePositionX2 = -860;
int WavePositionX3 = 0;
int WavePositionX4 = -860;

int WavePositionY1 = 240;
int WavePositionY2 = 240;
int WavePositionY3 = 240;
int WavePositionY4 = 240;

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
  
  image(nami_4, WavePositionX4, WavePositionY1);
  image(nami_3, WavePositionX3, WavePositionY2);
  image(nami_2, WavePositionX2, WavePositionY3);
  image(img, WavePositionX1, WavePositionY4);
  
  WavePositionX1 -= 10;
  WavePositionX2 += 10;
  WavePositionX3 -= 10;
  WavePositionX4 += 10;
  
  WavePositionY1 -= 5;
  WavePositionY2 -= 5;
  WavePositionY3 -= 5;
  WavePositionY4 -= 5;
  
  if(WavePositionY1 < 0){
  WavePositionY1 = 0;
  WavePositionY2 = 0;
  WavePositionY3 = 0;
  WavePositionY4 = 0;
  }
  
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
