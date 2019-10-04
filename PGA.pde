// Jyo's animal generator

void setup(){
  size(300,300); 
  background(255); 
  translate(width/2-10, height/2-5); 
  generate();
}

boolean mouse = false; 

void draw(){
}


public void generate(){
  
  float p1x = 0;
  float p1y = 0; 
  
  float p2x = 0;
  float p2y = random(20,40);
  
  float p3x = random(5,10);
  float p3y = random(p2y*.15, p2y-p2y*.2);
  
  float m = (p2y-p3y)/(p3x-p2x); 
  float p4x = 3/m+3;
  float p4y = p2y-3;
  
  float p5x = random(p4x+2,p4x+6);
  float p5y = p2y;
  
  float p6x = p3x+4;
  float p6y = p3y;
  
  float p7x = random(5,15);
  float p7y = 0;
  
  
  float maxX = max(max(p1x, p2x, p3x), max(p4x, p5x, p6x), p7x); 
  float shift = random(maxX+3,maxX+17);
  
  float p8x = p1x+shift;
  float p9x = p3x+shift;
  float p10x = p2x+shift;
  float p11x = p4x+shift;
  float p12x = p5x+shift;
  float p13x = p6x+shift;
  float p14x = p7x+shift;
  
  float p8y = p1y;
  float p9y = p3y; 
  float p10y = p2y; 
  float p11y = p4y; 
  float p12y = p5y; 
  float p13y = p6y; 
  float p14y = p7y; 
  
  float p18x = (p14x+p13x)/2.0;
  float p18y = (p14y+p13y)/2.0;

  float p17x = (p8x+p9x)/2.0;
  float p17y = (p8y+p9y)/2.0;
  
  float p16x = (p7x+p6x)/2.0;
  float p16y = (p7y+p6y)/2.0;
  
  float p19x = random(max(p13x,p14x)+5, max(p13x,p14x)+14);
  float p19y = random(p14y-10,p14y+10);
  
  float p20x = p19x;
  float p20y = p19y-random(6,15);
  
  float w = random(p1x,p14x);
  float wshift = random(w,p14x);
  
  float p21x = w;
  float p21y = random(p14y-20,p14y-5);
  
  float p22x = wshift;
  float p22y = p21y;
  
  float p23x = p20x+random(3,12);
  float p23y = p20y;
  
  float p24x = p23x;
  float p24y = p19y;
  
  line(p1x,p1y,p3x,p3y);
  line(p3x,p3y,p2x,p2y);
  line(p2x,p2y,p5x,p5y);
  line(p5x,p5y,p4x,p4y);
  line(p4x,p4y,p6x,p6y);
  line(p6x,p6y,p7x,p7y);
  
  line(p8x,p8y,p9x,p9y);
  line(p9x,p9y,p10x,p10y);
  line(p10x,p10y,p12x,p12y);
  line(p12x,p12y,p11x,p11y);
  line(p11x,p11y,p13x,p13y);
  line(p13x,p13y,p14x,p14y);
 
  line(p16x,p16y,p17x,p17y);
  line(p18x,p18y,p19x,p19y);
 
  line(p20x,p20y,p22x,p22y);
  line(p22x,p22y,p21x,p21y);
  line(p1x,p1y,p21x,p21y);
  
  line(p20x,p20y,p23x,p23y);
  line(p23x,p23y,p24x,p24y);
  line(p24x,p24y,p19x,p19y);
  
  point(p20x+1, p20y+2);
  
  line(-200,p2y,200,p2y);
  
}

void mousePressed(){
  
  if(mouse == false){
    
    mouse = true; 
    background(255); 
    translate(width/2-10, height/2-5); 
    generate();
    
  }
  
}

void mouseReleased(){
  
    mouse = false; 
    
}