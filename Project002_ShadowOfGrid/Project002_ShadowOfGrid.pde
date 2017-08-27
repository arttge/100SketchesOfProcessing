
float r = 300;

void setup(){
  size(800,600);
  smooth();
}

void draw(){
  float h=100;
  float b=100;
  background(0,0,100);
  colorMode(HSB,100);
  if((mouseX - width/2)>0){
   float x = (height/2 - mouseY)/dist(width/2,height/2,mouseX,mouseY);
   if (asin(x)<0){
     h=100*(2*PI+asin(x))/(2*PI);
   }else{
     h=100*asin(x)/(2*PI);
   }
  }else{
    float x = (height/2 - mouseY)/dist(width/2,height/2,mouseX,mouseY);
   if (asin(x)<0){
     h=100*(PI-asin(x))/(2*PI);
   }else{
     h=100*(PI-asin(x))/(2*PI);
   }
  }
  
  if (dist(width/2,height/2,mouseX,mouseY)>r){
     b = 50;
     
   }else{
     b = 100 - map(dist(width/2,height/2,mouseX,mouseY),0,r,0,50);
   } 
  
  shadowOfGrid(h,b); // generate shadows
  grid(0,0,h,100);  // generate grid
  

}

void grid(float xx,float yy,float h,float b){
  float x;
  float y;
  rectMode(CENTER);
  noStroke();
  fill(h,100,b);
  for(int i=1;i<10;i++){
   
    if(i%3==0){
      x = 325 + 150;
    }else{
      x = (i%3-1)*75+325;
    }
    
    if(i<4){
      y = 225;
    }else if (i<7){
      y = 225+75;
    }else{
      y = 225+75*2;
    }
    
    rect(x+xx,y+yy,50,50);
    
  }
}

void shadowOfGrid(float h,float b){
   float xx=0;
   float yy=0;
   float l;
   
   if (dist(width/2,height/2,mouseX,mouseY)>r){
     l = 25;
     
   }else{
     l = map(dist(width/2,height/2,mouseX,mouseY),0,r,0,25);
   }
   xx = (width/2 - mouseX)/dist(width/2,height/2,mouseX,mouseY)*l;
   yy = (height/2 - mouseY)/dist(width/2,height/2,mouseX,mouseY)*l;
   
   grid(xx,yy,h,b);
}