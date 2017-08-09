PImage piggyPic;
Piggy piggy;
Piggy[] piggies = new Piggy[300];

float x = 0;
float y = 0;

float xEye1 = 20;
float yEye1 = 54;
float xEye2 = 79;
float yEye2 = 54;

int a = 0;
int aa = 0;
Boolean isFull = false;



void setup(){
   size(800,600);
   smooth();
   piggyPic = loadImage("greenpiggy.png");
}

void draw(){
  background(255);
  x = random(width-100);
  y = random(height-100);
  
  piggy = new Piggy(x,y);
  a += 1;
  
  piggies[a-1] = piggy;
  if (a>299){
   isFull = true;
   a = 1 ;
  }
  display();
  //RotateEyes();
  delay(500);
  
  
}

void display(){
  float xx;
  float yy;
  
  float l;
  
  float xRotate;
  float yRotate;
  
  
  if (isFull){
    aa = 299;
  }else{
    aa = a;
  }
  for (int i=0;i<aa;i++){
    image(piggyPic,piggies[i].xPos,piggies[i].yPos);
    noStroke();
    fill(0);
    ellipseMode(CORNER);
    //ellipse(piggies[i].xPos+xEye1,piggies[i].yPos+yEye1,5,5);
    //ellipse(piggies[i].xPos+xEye1+59,piggies[i].yPos+yEye1,5,5);
    
    xx = -piggies[i].xCenter + x;
    yy = -piggies[i].yCenter + y;
    
    l = sqrt(xx*xx + yy*yy);
    
    xRotate = 5*(xx/l);
    yRotate = 5*(yy/l);
    
    ellipse(piggies[i].xPos+xEye1+xRotate,piggies[i].yPos+yEye1+yRotate,5,5);
    ellipse(piggies[i].xPos+xEye1+59+xRotate,piggies[i].yPos+yEye1+yRotate,5,5);
    
  }
}

/*void RotateEyes(){
  if (isFull){
    aa = 299;
  }else{
    aa = a;
  }
  for (int i=0;i<aa;i++){
    //ellipse(piggies[i].xPos+xEye1,piggies[i].yPos+yEye1,5,5);
    
  }
}
*/