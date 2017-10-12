import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Project015_circlesInGrid extends PApplet {


int tileCount = 10;
int circleMax = 20;


public void setup(){
   
   


}

public void draw(){
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
  public void settings() {  size(600,600);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Project015_circlesInGrid" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
