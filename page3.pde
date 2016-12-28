void page3(){
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
    
    fill(200,155,100);
    textFont(font2);
    textSize(32);
    text("学生基本数据",width*0.32,height*0.13);
    fill(180,175,110);
    text("消费地图",width*0.52,height*0.13);
    fill(220,135,145);
    text("消费水平",width*0.7,height*0.13);
    
    hs.update();
    hs.display();
//    text(hs.getPos(),mouseX,mouseY);
    int dt = int(map(hs.getPos(),740,1300,1,22));
    drawChart(dt);
}

void drawChart(int dn){
    noFill();
    stroke(220,135,145);
    strokeWeight(2);
    line(width*0.42,height*0.32,width*0.42,height*0.68);
    line(width*0.42,height*0.68,width*0.82,height*0.68);
    
    strokeWeight(1);
    fill(220,135,145);
    textSize(24);
    text("（元）",width*0.36,height*0.33);
    for(int i=0;i<3;i++){
      line(width*0.415,height*(0.32+(i+1)*0.09),width*0.42,height*(0.32+(i+1)*0.09));
      text(900-i*300,width*0.38,height*(0.33+(i+1)*0.09));
    }
    text(0,width*0.38,height*(0.33+(3+1)*0.09));
    
    for(int i=0;i<3;i++){
      line(width*(0.42+(i+1)*0.1),height*0.68,width*(0.42+(i+1)*0.1),height*0.688);
      
      textSize(32);
      float hgt = map(tradeMean[dn][i],0,900,(0.32+(3+1)*0.09),0.32);
      if(i==0){
        fill(220,145,175);
        text("早",width*(0.41+(i+1)*0.1),height*0.73);
        rect(width*(0.4+(i+1)*0.1),height*hgt,width*0.04,height*(0.68-hgt));  //tradeMean[i][0]
      }else if(i==1){
        fill(230,190,145);
        text("中",width*(0.41+(i+1)*0.1),height*0.73);
        rect(width*(0.4+(i+1)*0.1),height*hgt,width*0.04,height*(0.68-hgt));
      }else{
        fill(220,135,145);
        text("晚",width*(0.41+(i+1)*0.1),height*0.73);
        rect(width*(0.4+(i+1)*0.1),height*hgt,width*0.04,height*(0.68-hgt));
      }
    }
    fill(120);
    textSize(24);
    text(("2014/9/" + dn),width*0.59,height*0.85);
    fill(220,135,145);
    text(("各消费点分时段消费总额均值"),width*0.599,height*0.244);
}