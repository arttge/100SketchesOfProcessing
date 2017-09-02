
class Attractor {
  float mass;
  float G;
  PVector location;
  
  Attractor(){
   location = new PVector(width/2,height/2);
   mass = 20;
   G = 1;
  }
  
  PVector attract(Mover m) {
   PVector force = PVector.sub(location,m.location); 
   float d = force.mag();
   d = constrain(d,1.0,20.0);
   force.normalize();
   float strength = (G * mass * m.mass)/(d * d);
   force.mult(strength);
   return force;
  }
  void update(){
   mass += 0.1; 
   mass = constrain(mass,20,40);
  }
  
  void back(){
   mass -= 0.1; 
   mass = constrain(mass,20,40);
  }
  
  void display(){
   ellipseMode(CENTER);
   strokeWeight(4);
   stroke(0);
   ellipse(location.x,location.y,mass,mass);
  }
}