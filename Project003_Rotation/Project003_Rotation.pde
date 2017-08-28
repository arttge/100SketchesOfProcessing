
float[] points = new float[5];
float[] rotates = new float[5];

void setup(){
  size(400,400);
  translate(width/2,height/2);
  
}

void draw(){
  background(255);
  
  for(int i=0;i<5;i++){
    points[i] = 25*(i+1);
    
    pushMatrix();
    translate(width/2,height/2);
    noFill();
    ellipse(0,0,2*points[i],2*points[i]);
    // 绘制轨迹圆
    rotates[i]=rotates[i] + (5-i)*0.01;
    rotate(rotates[i]);
    fill(222);
    ellipse(points[i],0,15,15);
    
    
    popMatrix();
  }
  
  
}