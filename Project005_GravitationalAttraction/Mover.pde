

class Mover{
 PVector location;
 PVector velocity;
 PVector acceleration;
 float mass;
 
 Mover(){
   location = new PVector(random(200,320),300);
   velocity = new PVector(random(0,1),random(0,1));
   acceleration = new PVector(0,0);
   mass = 1;
 }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
   acceleration.mult(0);
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,16,16);
    
  }
}