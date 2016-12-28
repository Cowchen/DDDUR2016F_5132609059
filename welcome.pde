  
void welcomePage(){
  image(bg,0,0,width,height);
  stroke(255,200);
  strokeWeight(100);
  noFill();
  rect(0,0,width,height,100);
  
  noStroke();
  fill(255,180);
  rect(200,330,480,150,30);
  icon.resize(0,100);
  image(icon,245,355);
  
  stroke(75,150);
  strokeWeight(2);
  if(mouseX>width*0.5-50 & mouseX<width*0.5+50 & mouseY>700-50 & mouseY<700+50){
    fill(255,200,180,180);
    if(mousePressed){
      sFlag=1;
    }
  }
  ellipse(width*0.5,700,100,100);
    fill(150);
  if(mouseX>width*0.5-50 & mouseX<width*0.5+50 & mouseY>700-50 & mouseY<700+50){
    fill(255);
  }
  noStroke();
  rect(width*0.497-24,690,48,20);
  triangle(width*0.497+12,680,width*0.497+12,720,width*0.497+38,700);
  
  fill(255);
  textFont(font1);
  textSize(48);
  text("校",width*0.5-24,height*0.25);
  text("园",width*0.5-24,height*0.25+56);
  text("·",width*0.5-24,height*0.25+112);
  text("生",width*0.5-24,height*0.25+168);
  text("活",width*0.5-24,height*0.25+224);
  text("·",width*0.5-24,height*0.25+280);
  text("数",width*0.5-24,height*0.25+336);
  text("据",width*0.5-24,height*0.25+392);
}