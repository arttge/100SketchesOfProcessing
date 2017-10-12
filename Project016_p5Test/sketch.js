

function setup(){
  createCanvas(windowWidth,windowHeight);
  background(255);
}

function draw(){
  var x = random(0,width);
  var y = random(0,height);
  var w = random(0,50);

  ellipse(x,y,w,w);
}
