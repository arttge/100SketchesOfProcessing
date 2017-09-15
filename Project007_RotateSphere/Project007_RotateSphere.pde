import processing.opengl.*;

int r = 100;

void setup() {
  size(400, 400, OPENGL);
  stroke(0);
}

void draw() {
  background(255);

  translate(width/2, height/2);
  rotateY(frameCount*0.02);
  rotateX(frameCount*0.02);

  float a = 0;
  float b = 0;
  float lastx = 0;
  float lasty = 0;
  float lastz = 0;

  while (a<180) {
    b +=36;
    a +=1;

    float radianA = radians(a);
    float radianB = radians(b);

    float thisz = r*cos(radianA);
    float thisx = r*sin(radianA)*sin(radianB);
    float thisy = r*sin(radianA)*cos(radianB);

    if (lastx!=0) {
      //line(thisx,thisy,thisz,lastx,lasty,lastz);
      pushMatrix();
      noStroke();
      lights();
      translate(thisx, thisy, thisz);
      sphere(5);
      popMatrix();
    }

    lastx = thisx;
    lasty = thisy;
    lastz = thisz;
  }
}