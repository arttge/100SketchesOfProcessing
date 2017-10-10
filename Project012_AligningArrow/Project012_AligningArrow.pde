
PShape arrow;
int tileCount = 10;
float tileWeight,tileHeight;
float aL = 5;


void setup(){
  size(600,600);
  smooth();
  background(255);

  tileWeight = width/tileCount;
  tileHeight = height/tileCount;

  arrow = loadShape("arrow.svg");

}

void draw(){
  background(255);

  for(int gridY=0;gridY<tileCount;gridY++){
    for(int gridX=0;gridX<tileCount;gridX++){
      float posX = gridX*tileWeight + tileWeight/2;
      float posY = gridY*tileHeight + tileHeight/2;

      float angle = atan2(mouseY-posY,mouseX-posX);
      //float aX = aL*cos(angle);
      //float aY = aL*sin(angle);

      pushMatrix();
      translate(posX,posY);
      rotate(angle);
      shapeMode(CENTER);
      fill(0);
      shape(arrow,0,0,tileWeight,tileHeight);
      popMatrix();
    }
  }


}
