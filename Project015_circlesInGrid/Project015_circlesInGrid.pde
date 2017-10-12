
int tileCount = 10;
int circleMax = 20;


void setup(){
   size(600,600);
   smooth();


}

void draw(){
  background(255);
  noFill();

  randomSeed(1);

  float tileSize = width/tileCount;

  int circleCount = (int)mouseX/(width/20);
  float offset= map(mouseY,0,height,0,tileSize/2);

  for(int gridY=0;gridY<tileCount;gridY++){
    for(int gridX=0;gridX<tileCount;gridX++){
      float dxOff = 0;
      float dyOff = 0;
      // position
      float posX = gridX*tileSize+tileSize/2;
      float posY = gridY*tileSize+tileSize/2;

      // offset
      int dir = (int)random(4);
      switch(dir){
        case 0:
        dxOff = -offset/circleCount;
        break;
        case 1:
        dxOff = offset/circleCount;
        break;
        case 2:
        dyOff = offset/circleCount;
        break;
        case 3:
        dyOff = -offset/circleCount;
        break;
      }


      // draw circles
      for(int count=0;count<circleCount;count++){
        pushMatrix();
        translate(posX+dxOff*count,posY+dyOff*count);
        ellipse(0,0,tileSize-offset/circleCount*2*count,tileSize-offset/circleCount*2*count);
        popMatrix();
      }



    }
  }
}
