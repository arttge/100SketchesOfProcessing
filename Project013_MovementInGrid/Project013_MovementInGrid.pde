

import processing.opengl.*;

float tileCount = 20;

void setup(){
  size(600,600,P3D);
}

void draw(){
  background(255);
  smooth();

  float tileSize = height/tileCount;

  for (int gridY=0;gridY<tileCount;gridY++){
    for (int gridX=0;gridX<tileCount;gridX++){
      float posX = gridX*tileSize + tileSize/2;
      float posY = gridY*tileSize + tileSize/2;

      float dis = dist(mouseX,mouseY,posX,posY);
      dis = dis/600*30;

      pushMatrix();
      translate(posX,posY,dis);
      noStroke();
      lights();
      sphere(dis);
      popMatrix();

    }
  }
}
