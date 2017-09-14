
float x;
float y;
float r = 20;
float ang = 0;
float rad = 0;
float lastX = r;
float lastY = 0;
float radiusNoise = 10;


void setup(){
   size(800,600);
   background(255);
   strokeWeight(1);
   smooth();
   
}

void draw(){
  translate(width/2,height/2);
  rad = radians(ang);
  float thisR = r + (noise(radiusNoise)*200)-100;
  x = thisR*cos(rad);
  y = thisR*sin(rad);
  //point(x,y);
  line(x,y,lastX,lastY);
  
  radiusNoise += 0.05;
  lastX = x;
  lastY = y;
  ang += 5;
  r += 0.1;
}