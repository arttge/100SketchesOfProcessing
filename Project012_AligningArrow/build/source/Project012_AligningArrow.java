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

public class Project012_AligningArrow extends PApplet {


PShape arrow;
int tileCount = 10;
float tileWeight,tileHeight;
float aL = 5;


public void setup(){
  
  
  background(255);

  tileWeight = width/tileCount;
  tileHeight = height/tileCount;

  arrow = loadShape("arrow.svg");

}

public void draw(){
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
  public void settings() {  size(600,600);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Project012_AligningArrow" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
