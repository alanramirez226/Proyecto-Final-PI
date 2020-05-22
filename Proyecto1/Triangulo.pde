class Triangulo  {
  
 float x1,x2,x3; 
 float y1,y2,y3;
 int p;
  
  Triangulo(int p_){
   
   this.p = p_;
   
  }
  
  void Dibujar(){
    if(p > 0){
    translate(width/2, height/2);
    x1 = random(-100, 100);
    y1 = random(400, 450);
    x2 = random(-100, 100);
    y2 = random(400, 450);
    x3 = random(-100, 100);
    y3 = random(400, 450);
    noFill();
    stroke(255, 100, 0);
    triangle(x1, -y1/2, x2, -y2/2, x3, -p/2);
   } 
 }
}
