
PVector a = new PVector(150,0);
PVector b = new PVector(0,75);

void setup(){
  size(400,400);
  
  
}

void draw(){
  background(184,233,134);
  noStroke();
  translate(width/2,height/2);
  a.rotate(0.03);
  b.rotate(0.01);
  
  ellipse(a.x, a.y, 5, 5);
  ellipse(-a.x, a.y, 5, 5);
  ellipse(a.x, -a.y, 5, 5);
  ellipse(-a.x,-a.y, 5, 5);
  ellipse(b.x, b.y, 10, 10);
  ellipse(b.x, -b.y, 10, 10);
  ellipse(-b.x, b.y, 10, 10);
  ellipse(-b.x,-b.y, 10, 10);
  stroke(255);
  strokeWeight(3);
  
  line(a.x,a.y,b.x,b.y);
  line(-a.x,-a.y,-b.x,-b.y);
  line(-a.x,a.y,-b.x,b.y);
  line(a.x,-a.y,b.x,-b.y);
  
}