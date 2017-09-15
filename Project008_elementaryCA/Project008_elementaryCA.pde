

CA ca;

void setup(){
  size(600,600);
  background(255); 
  ca = new CA();
}

void draw(){
  if (ca.r==255){
    noLoop();
  }
  ca.display();
  
  if (ca.generation < height/ca.w){
    ca.generate();
  }else{
    ca.update(); 
    background(255);
  }
}