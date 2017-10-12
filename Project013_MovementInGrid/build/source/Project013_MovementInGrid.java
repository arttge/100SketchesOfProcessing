import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Project013_MovementInGrid extends PApplet {





float tileCount = 20;

public void setup(){
  
}

public void draw(){
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
  public void settings() {  size(600,600,P3D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Project013_MovementInGrid" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
