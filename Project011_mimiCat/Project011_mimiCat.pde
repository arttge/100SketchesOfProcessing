
PImage img;
int drawMode = 1;
int t = 1;
int a = 1;
void setup(){
 size(600,600);
 smooth();
 img = loadImage("mimi.png");
}

void draw(){
  background(255);
  if (t>50){
     a = -a; 
    }else if (t<1){
      a = -a;
    }
    t += a;
  println(t);
  
  for (int pixelx = 0;pixelx<img.width;pixelx++){
   for (int pixely = 0;pixely<img.height;pixely++){
     float px = width/img.width;
     float py = height/img.height;
     float posx = pixelx * px;
     float posy = pixely * py;
     
    color c = img.pixels[pixely*img.width+pixelx];
    // greyscale conversion
    int greyscale =round(red(c)*0.222+green(c)*0.707+blue(c)*0.071);
    
    
    switch(drawMode){
     case 1:
     // greyscale to stroke weight
        float w1 = map(greyscale, 0,255, 15,0.1);
        stroke(0);
        float a = map(t,0,50,0.01,1);
        strokeWeight(w1 * a);
        line(posx, posy, posx+5, posy+5); 
        break;
     
     
    }
   }
  }
}