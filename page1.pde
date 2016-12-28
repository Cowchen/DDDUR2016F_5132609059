void page1(){
background(255);
image(b2,width*0.02,height*0.13,width*0.23,640);

    icon.resize(0,50);
    image(icon,width*0.07,height*0.09);
    
    fill(125);
    textFont(font1);
    textSize(24);
    text("校园·生活·数据",width*0.07,height*0.91);
    
    stroke(240,175,100);
    strokeWeight(1);
    line(width*0.25,height*0.05,width*0.25,height*0.95);
    
    stroke(220,135,145);
    strokeWeight(2);
    fill(255,245,250);
    beginShape();
    vertex(width*0.3,height*0.14);
    vertex(width*0.66,height*0.14);
    bezierVertex(width*0.66,height*0.115,width*0.66,height*0.088,width*0.68,height*0.08);
    vertex(width*0.8,height*0.08);
    bezierVertex(width*0.82,height*0.088,width*0.82,height*0.115,width*0.82,height*0.14);
    vertex(width*0.95,height*0.14);
    vertex(width*0.95,height*0.95);
    vertex(width*0.3,height*0.95);
    vertex(width*0.3,height*0.14);
    endShape();
    
    stroke(180,175,110);
    strokeWeight(2);
    fill(250,255,245);
    beginShape();
    vertex(width*0.3,height*0.14);
    vertex(width*0.48,height*0.14);
    bezierVertex(width*0.48,height*0.115,width*0.48,height*0.088,width*0.5,height*0.08);
    vertex(width*0.62,height*0.08);
    bezierVertex(width*0.64,height*0.088,width*0.64,height*0.115,width*0.64,height*0.14);
    vertex(width*0.95,height*0.14);
    vertex(width*0.95,height*0.95);
    vertex(width*0.3,height*0.95);
    vertex(width*0.3,height*0.14);
    endShape();
    
    
    stroke(200,155,100);
    strokeWeight(2);
    fill(255,250,245);
    beginShape();
    vertex(width*0.3,height*0.14);
    bezierVertex(width*0.3,height*0.115,width*0.30,height*0.088,width*0.32,height*0.08);
    vertex(width*0.44,height*0.08);
    bezierVertex(width*0.46,height*0.088,width*0.46,height*0.115,width*0.46,height*0.14);
    vertex(width*0.95,height*0.14);
    vertex(width*0.95,height*0.95);
    vertex(width*0.3,height*0.95);
    vertex(width*0.3,height*0.14);
    endShape();
    
    fill(200,155,100);
    textFont(font2);
    textSize(32);
    text("学生基本数据",width*0.32,height*0.13);
    fill(180,175,110);
    text("消费地图",width*0.52,height*0.13);
    fill(220,135,145);
    text("消费水平",width*0.7,height*0.13);
    
    noFill();
    strokeWeight(60);
    strokeCap(SQUARE);
    stroke(240,175,100);
    float ang = TWO_PI*(float)type[0]/(type[0]+type[1]+type[2]);
    arc(width*0.45,height*0.5,240,240,0,ang);
    stroke(255,225,150);
    arc(width*0.45,height*0.5,240,240,ang,TWO_PI*(float)type[1]/(type[0]+type[1]+type[2])+ang);
    ang = TWO_PI*(float)type[1]/(type[0]+type[1]+type[2])+ang;
    stroke(200,155,80);
    arc(width*0.45,height*0.5,240,240,ang,ang+TWO_PI*(float)type[2]/(type[0]+type[1]+type[2]));
   
    fill(125);
    textSize(30);
    text("学历分布",width*0.413,height*0.27);
    text("性别比例",width*0.76,height*0.27);
    
    textSize(24);
    text("本科    硕士    博士",width*0.392,height*0.757);
    
    noStroke();
    fill(240,175,100);
    ellipse(width*0.38,height*0.75,15,15);
    fill(255,225,150);
    ellipse(width*0.44,height*0.75,15,15);
    fill(200,155,80);
    ellipse(width*0.5,height*0.75,15,15);
    

    
    int rSize=52;
    float fRatio=(float)gender[0]/(gender[0]+gender[1]);
    f.resize(0,int(rSize*0.86));
    m.resize(0,int(rSize*0.86));
    for(int i=0;i<36;i++){
      if(i<=(int)36*fRatio){
        fill(255,200,200);
      }else{
        fill(180,200,255);
      }
      rect(width*0.7+i%6*rSize,height*0.33+(i/6)*rSize,rSize*0.9,rSize*0.9);
      tint(255,180);
      if(i<=(int)36*fRatio){
        image(f,width*0.7+i%6*rSize,height*0.33+(i/6)*rSize);
      }else{
        image(m,width*0.7+i%6*rSize,height*0.33+(i/6)*rSize);
      }
      noTint();
    }
    
    noStroke();
    fill(255,200,200);
    rect(width*0.735,height*0.74,15,15);
    fill(180,200,255);
    rect(width*0.805,height*0.74,15,15);
    
    fill(125);
    textSize(24);
    text("女 " + int(fRatio*100) + "%   男 " + (100-int(fRatio*100)) + "%",width*0.75,height*0.757);

}