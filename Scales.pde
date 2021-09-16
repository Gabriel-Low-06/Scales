void setup(){
size(500,500);
noLoop();
}

void scale(float x,float y){
  beginShape(); 
   for(int s = (int)((Math.random()*5)+8); s>4; s--){
  vertex(x, -s*4+y);
  vertex(-s*3+x, -s*3+y);
  vertex(-s*4+x, y);
  vertex(-s*3+x, s*3+y);
  vertex(x, s*4+y);
  vertex(s*3+x, s*3+y);
  vertex(s*4+x, y);
  vertex(s*3+x, -s*3+y);
  strokeWeight(1);
   }
  endShape(CLOSE);
}

//float big = 70;
void draw(){
   noStroke();
   fill(100,100,100);
   for(int i = 145;i<=175;i+=7){
  triangle(i-5,100,i,70,i+5,100);
   }
    for(int i = 315;i<=345;i+=7){
  triangle(i-5,100,i,70,i+5,100);
   }
  fill(100,115,0);
  ellipse(250,90,40,60);//head
  ellipse(250,68,20,40);
  ellipse(160,120,40,80);//lfleg 
  ellipse(330,120,40,80);//rfleg
  ellipse(155,380,80,40);//lbleg
  ellipse(335,380,80,40);//rbleg
  //fill(0,0,200);
  ellipse(235,78,15,15);
    ellipse(265,78,15,15);

fill(111, 78, 55);
ellipse(250,250,275,290);//main shell
 
for(int radius = 105; radius>0; radius-=40){//scales
for(float x = 10; x<=400; x+=60){

 float y = sqrt(sq(radius) - sq(x-250))+250;
 strokeWeight(10);
 stroke(111,100,55);
  fill(111,x/7+20,55);
  
scale(250-(y-250),x);
scale(y,x);
scale(x,y);
scale(x,250-(y-250));


}
}
}
