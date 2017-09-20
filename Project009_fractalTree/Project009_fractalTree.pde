

void setup(){
  size(400,400);
  background(255);
  smooth();
}

void draw(){
  
}
void mousePressed(){
  background(255);
  translate(width/2,height);
  branch(120);
}
void branch(float l){
  // 确定厚度
  float t = map(l,2,50,1,4);
  strokeWeight(t);
  line(0,0,0,-l);
  
  translate(0,-l);
  l = l*0.66f;
  
  if (l>2){
    int n = int(random(1,4));
    for (int i=0;i<n;i++){
     float theta = random(-PI/2,PI/2);
     pushMatrix();
     rotate(theta);
     branch(l);
     popMatrix();
    }
  }
}