void setup(){
  size(500,500);
}

void draw( ){
  background(200);
  
  //border
  fill(25);
  rect (30,30,435,440,20);
  
  //bowl
  fill (200);
  arc(250,250,235,235,0,PI);
  
  //branch
  fill (200);
  arc(300,240,250,230,radians(180), radians(360));
  
  //right apple
  fill (25);
  stroke(25);
  arc(340,243,213,215,radians(180),radians(360));
  
  //tip of the  banana 
  fill(25);
  arc(368,230,190,240,radians(180),radians(360));
  
  //right apple 
  fill (200);
  arc(295,243,110,110,radians(180),radians(360));
  
  //left apple bg 
  fill(25);
  stroke(25);
  arc(200,243,128,128,radians(180),radians(360));
  
  //left apple 
  fill (200);
  arc(200,243,110,110,radians(180),radians(360));
}
  
