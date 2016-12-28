void page2(){
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
    
    fill(200,155,100);
    textFont(font2);
    textSize(32);
    text("学生基本数据",width*0.32,height*0.13);
    fill(180,175,110);
    text("消费地图",width*0.52,height*0.13);
    fill(220,135,145);
    text("消费水平",width*0.7,height*0.13);
    
    noTint();
    image(map,width*0.303,height*0.146,width*0.643,height*0.796);
    //tint(255,100);
    //image(mapMask,width*0.29,height*0.146,width*0.643,height*0.796);
    //noFill();
    //stroke(180,175,110);
    //strokeWeight(1);
    //rect(width*0.32,height*0.17,width*0.61,height*0.75);
    //strokeWeight(0.5);
    //for(int i=0;i<9;i++){
    //  line(width*0.32,height*(0.17+0.075*(i+1)),width*0.93,height*(0.17+0.075*(i+1)));
    //  for(int j=0;j<15;j++){
    //    line(width*(0.32+0.61*(j+1)/16),height*0.17,width*(0.32+0.61*(j+1)/16),height*0.92);
    //  }
    //}
    
    //for(int i=0;i<9;i++){
    //  for(int j=0;j<15;j++){
    //    for(int n=0;n<merInfo.length;n++){
    //      if(merInfo[n][2]==i*15+j){
    //        noStroke();
    //        float sz = map(merInfo[n][1],0,30,15,80);
    //        float alp = sz/80;
    //        float px = width*(0.32+0.61*(j+1)/16);
    //        float py = height*(0.17+0.075*(i+1));
    //        fill(255*alp,255,155*alp,alp*255);
    //        ellipse(px,py,sz,sz);
    //        stroke(180,175,110);
    //        strokeWeight(1);
    //        ellipse(px,py,sz,sz);
    //      }
    //    }
    //  }
    //}
    
   
    for(int n=0;n<merInfo.length;n++){
         if(merInfo[n][2]>0){
           int sz = (int) map(merInfo[n][1],0,30,25,100);
           int px = int(width*merInfo[n][2]);
           int py = int(height*merInfo[n][3]);
             
              noStroke();
              float r = map(sz,25,100,0,8);
              for(int m=sz;m>0;m-=2){
                float c = map(m,sz,0,0,1);
                if(r*c>4){
                  fill(255,0,0,200*c);
                }else if(r*c>2){
                  fill(255,255,0,200*c);
                }else if(r*c>1){
                  fill(0,255,0,255*c);
                }else{
                  fill(0,0,255,255*c);
                }
                
                ellipse(px,py,m,m);
              }

//           noFill();
//           stroke(255,100);
//           strokeWeight(10);
//           ellipse(px,py,sz,sz);
//           line(px-sz/8,py,px+sz/8,py);
//           line(px,py-sz/8,px,py+sz/8);
//           stroke(255,0,0);
//           strokeWeight(2);
//           ellipse(px,py,sz,sz);
//           line(px-sz/8,py,px+sz/8,py);
//           line(px,py-sz/8,px,py+sz/8);
         }
       }
   
       for(int n=0;n<merInfo.length;n++){
         if(merInfo[n][2]>0){
           float sz = map(merInfo[n][1],0,30,15,80);
           float px = width*merInfo[n][2];
           float py = height*merInfo[n][3];
           if(mouseX>px-sz/2 & mouseX<px+sz/2 & mouseY>py-sz/2 & mouseY<py+sz/2){
             fill(0);
             rect(mouseX,mouseY-32,merName[n].length()*32,40);
             fill(255);
             text(merName[n],mouseX,mouseY);
           }
         }
       }
}
