float ax,ay,bx,by,ar,br;
float angleA,angleB;

void setup(){
  size(400,400);
  
  ar = 150;
  br = 75;
  angleA = 0;
  angleB = PI/4;
  
}

void draw(){
  background(184,233,134);
  noStroke();
  translate(width/2,height/2);
  angleA += 0.03;
  angleB += 0.01;
  ax = ar*sin(angleA);
  ay = ar*cos(angleA);
  bx = br*sin(angleB);
  by = br*cos(angleB);
  
  ellipse(ax, ay, 5, 5);
  ellipse(-ax, ay, 5, 5);
  ellipse(ax, -ay, 5, 5);
  ellipse(-ax,-ay, 5, 5);
  ellipse(bx, by, 10, 10);
  ellipse(bx, -by, 10, 10);
  ellipse(-bx, by, 10, 10);
  ellipse(-bx,-by, 10, 10);
  stroke(255);
  strokeWeight(3);
  
  line(ax, ay,bx , by);
  line(-ax,-ay,-bx , -by);
  line(-ax, ay,-bx , by);
  line(ax, -ay,bx , -by);


  
  
  
}