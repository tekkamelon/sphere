void setup(){
  size(500,500,P3D);
  background(0);
}

void draw(){
  float rx = map(mouseY, 0, height, HALF_PI, -HALF_PI);//x軸の回転
  float ry = map(mouseX, 0, width, -HALF_PI, HALF_PI);//y軸の回転
  float r = mouseX;
  float g = mouseY;
  float b = r+g/2;
  
  background(0);
  lights();
  
//座標と時刻
  fill(0,255,0);
  textSize(25);
  text(mouseX+","+mouseY,0,20);
  text(nf(hour(), 2)+":"+nf(minute(), 2)+":"+nf(second(), 2), 0, 45);
  text("keypress = exit",305,492);
  noFill();
  
  
//ワイヤーフレーム球の描写
  if(mousePressed == false){
    pushMatrix();
      noFill();
      translate(width/2,height/2,-700);
      rotateX(rx);
      rotateY(ry);
      stroke(r,g,b);
      sphereDetail(second());
      sphere(500);
    popMatrix();
  }
  
//球の描写
  if(mousePressed == true){
    pushMatrix();
      noStroke();
      translate(width/2,height/2,-700);
      rotateX(rx);
      rotateY(ry);
      fill(r,g,b);
      directionalLight(255, 255, 255, -1,-1,-1);
      sphereDetail(second());
      sphere(500);
    popMatrix();
  }
 
}

void keyPressed(){
  exit();
}
