Mover[] movers = new Mover[7];
Attractor a;

void setup(){
 size(800,600);
 smooth();
 
 a = new Attractor();
 for(int i=0;i<7;i++){
   movers[i] = new Mover();
 }
}

void draw(){
 background(255);
 
 a.display();
 for(int i=0;i<7;i++){
 PVector attract = a.attract(movers[i]);
 movers[i].applyForce(attract);
 movers[i].update();
 movers[i].display();
 }
 
 if (mousePressed == true){
   a.update();
 }else{
   a.back();
 }
}

// 设定按住鼠标，恒星体积（质量）变大，引力变大
//void mousePressed(){
//  a.update();
//}

//void mouseReleased(){
//  a.back();
//}