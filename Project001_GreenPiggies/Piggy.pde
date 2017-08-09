class Piggy{
  float xCenter;
  float yCenter;
  float xPos;
  float yPos;
  
  
  Piggy(float xPos_,float yPos_){
    xPos = xPos_;
    yPos = yPos_;
    xCenter = xPos+50;
    yCenter = yPos+50;
    
    
    image(piggyPic,xPos,yPos);
    
    
  }
  
}