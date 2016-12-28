String[] account;
Table merchant;

HScrollbar hs;

PImage bg,b2,icon,f,m,map,mapMask;
PFont font1,font2; 
int sFlag=0;
int[] type = new int[3];
int[] gender = new int[2];
int[] merCode;
int[] merCodeUni;
float[][] merInfo;
long[][] tradeData;
long[][] tradeMean = new long[23][3];
String[] merName;

void setup(){
  size(1600,900);
  hs = new HScrollbar(width*0.45,height*0.8,560,16,1);
////////  
  merchant = loadTable("merchant.csv","header");
  int mNum = merchant.getRowCount();
  merCode = new int[mNum];
  int ind = 0;
  
  for (TableRow row : merchant.rows()){
    int syscode = row.getInt("syscode");
    merCode[ind] = syscode;
    ind++;
  } 
  
  ind = 0;
  for(int i=0;i<300;i++){
    for(int j=0; j<mNum; j++){
      if(merCode[j]==i){
        ind++;
        break;
      }
    }
  }  
  
  merName = new String[ind];
  String[] merStr= loadStrings("merchant.txt");
  String[][] merStrr = new String[merStr.length][2];
  for(int i=0; i<merStr.length; i++){
    String[] line = splitTokens(merStr[i]);
    String str = line[1];
    merStrr[i][1] = str;
  }
  
  ind = 0;
  for(int i=0;i<300;i++){
    for(int j=0; j<mNum; j++){
      if(merCode[j]==i){
        merName[ind]=merStrr[j+1][1]; 
        println(merName[ind]);
        ind++;
        break;
      }
    }
  }  
  
  merCodeUni = new int[ind]; 
  ind=0;
  for(int i=0;i<300;i++){
    for(int j=0; j<mNum; j++){
      if(merCode[j]==i){
        merCodeUni[ind]=i;
        ind++;
        break;
      }
    }
  }
  println(ind);
  merInfo = new float[ind][4];     //merchant ID, popular level, location random id number
  for(int i=0; i<ind; i++){
    if(i==5){
      merInfo[i][2]=0.636;
      merInfo[i][3]=0.539;
    }else if(i==7){
      merInfo[i][2]=0.499;
      merInfo[i][3]=0.648;
    }else if(i==9){
      merInfo[i][2]=0.688;
      merInfo[i][3]=0.723;
    }else if(i==10){
      merInfo[i][2]=0.589;
      merInfo[i][3]=0.683;
    }else if(i==11){
      merInfo[i][2]=0.562;
      merInfo[i][3]=0.446;
    }else if(i==12){
      merInfo[i][2]=0.808;
      merInfo[i][3]=0.524;
    }else if(i==13){
      merInfo[i][2]=0.438;
      merInfo[i][3]=0.429;
    }else if(i==19){
      merInfo[i][2]=0.407;
      merInfo[i][3]=0.310;
    }else if(i==20){
      merInfo[i][2]=0.523;
      merInfo[i][3]=0.696;
    }else if(i==23){
      merInfo[i][2]=0.395;
      merInfo[i][3]=0.792;
    }else if(i==24){
      merInfo[i][2]=0.387;
      merInfo[i][3]=0.666;
    }else if(i==26){
      merInfo[i][2]=0.504;
      merInfo[i][3]=0.571;
    }else{
      merInfo[i][2]=0;
      merInfo[i][3]=0;
    }
    for(int j=0; j<mNum; j++){
      if(merCode[j]==merCodeUni[i]){
        merInfo[i][1]++;
      }
    }
  }
////////////////
  Table trade = loadTable("trade.csv","header");
  tradeData = new long[23][6];
  String[][] timeData = new String[trade.getRowCount()][2];
  for(int i=0; i< trade.getRowCount();i++){
      String s = trade.getString(i,3);
     
      timeData[i] = split(s,' ');
      
      String mStr = timeData[i][0].substring(7);
      
      int dayy = int(mStr);
      String[] strr = split(timeData[i][1],":");
      int tm = int(strr[0]);
      
      if(tm>=5 & tm<11){
        tradeData[dayy][0]+=trade.getInt(i,4);
        tradeData[dayy][1]++;
      }else if(tm>=11 & tm<16){
        tradeData[dayy][2]+=trade.getInt(i,4);
        tradeData[dayy][3]++;
      }else{
        tradeData[dayy][4]+=trade.getInt(i,4);
        tradeData[dayy][5]++;
      }
  }
 
 for(int i=1;i<23;i++){
   if(tradeData[i][1]>0)tradeMean[i][0]=tradeData[i][0]/tradeData[i][1];
   if(tradeData[i][3]>0)tradeMean[i][1]=tradeData[i][2]/tradeData[i][3];
   if(tradeData[i][5]>0)tradeMean[i][2]=tradeData[i][4]/tradeData[i][5];
 }
 /////////////////////////////////////////////

    account = loadStrings("account.txt");
    for(int i = 0; i < account.length ; i++){
      String[] line = splitTokens(account[i]);
      String str = line[2];
      if(str.equals("男")==true){
        gender[1]++;
      }else{
        gender[0]++;
      }
      
      str = line[5];
      if(str.equals("本科")==true){
        type[0]++;
      }
      if(str.equals("硕士")==true){
        type[1]++;
      }
      if(str.equals("博士")==true){
        type[2]++;
      }
    }
    
    
  println(gender[0]+" "+gender[1]+" "+type[0]+" "+type[1]+" "+type[2]);
  bg = loadImage("bg.jpg");
  icon = loadImage("icon.png");
  b2 = loadImage("b2.png");
  f = loadImage("f.png");
  m = loadImage("m.png");
  map = loadImage("mapbw.jpg");
  mapMask = loadImage("mapMask.jpg");
  
  font1 = createFont("FangSong",50);           //creat font
  font2 = createFont("KaiTi",50);
}

void draw(){
  if(sFlag==0){
    welcomePage();
  }else if(sFlag==1){
    page1();
  }else if(sFlag==2){
    page2();
  }else if(sFlag==3){
    page3();
  }
  
  if(sFlag > 0 & mousePressed & mouseX>width*0.3 & mouseY>height*0.08 & mouseX<width*0.46 & mouseY< height*0.14){
    sFlag=1;
  }
  
  if(sFlag > 0 & mousePressed & mouseX>width*0.48 & mouseY>height*0.08 & mouseX<width*0.64 & mouseY< height*0.14){
    sFlag=2;
  }
  
  if(sFlag > 0 & mousePressed & mouseX>width*0.66 & mouseY>height*0.08 & mouseX<width*0.82 & mouseY< height*0.14){
    sFlag=3;
  }
  
   //text((float)mouseX/width,800,300);
   //text((float)mouseY/height,800,350);
}
