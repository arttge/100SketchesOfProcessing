
int tileCount = 20;
float noiseChange = 0;

void setup(){
  size(600,600);
}

void draw(){
  colorMode(HSB, 360, 100, 100, 100);
  background(360);
  smooth();
  fill(192,100,64,60);
  noStroke();

  noiseChange += 0.003;


  float tileSize = height/tileCount;

  for(int gridY=0;gridY<tileCount;gridY++){
    for(int gridX=0;gridX<tileCount;gridX++){
      float posX = gridX*tileSize+tileSize/2;
      float posY = gridY*tileSize+tileSize/2;
      int count = gridY*tileCount + gridX + 1;
      float a = 2.5;

      float shiftX1 = noise(count+5+noiseChange)*tileSize*a;
      float shiftY1 = noise(count+5+noiseChange)*tileSize*a;
      float shiftX2 = noise(count+10+noiseChange)*tileSize*a;
      float shiftY2 = noise(count+15+noiseChange)*tileSize*a;
      float shiftX3 = noise(count+20+noiseChange)*tileSize*a;
      float shiftY3 = noise(count+25+noiseChange)*tileSize*a;
      float shiftX4 = noise(count+30+noiseChange)*tileSize*a;
      float shiftY4 = noise(count+35+noiseChange)*tileSize*a;

      pushMatrix();
      translate(posX,posY);
      beginShape();
      vertex(-shiftX1+posX, -shiftY1+posY);
      vertex(shiftX2+posX, -shiftY2+posY);
      vertex(shiftX3+posX, shiftY3+posY);
      vertex(-shiftX4+posX, shiftY4+posY);
      endShape(CLOSE);
      popMatrix();



    }
  }
}
