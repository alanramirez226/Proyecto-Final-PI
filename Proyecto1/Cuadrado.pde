class Cuadrado  {
 
 float x; 
 float y; 
 int l;
  
  Cuadrado(int l_){
   this.l = l_;
  }
  
  void Dibujar(){
    if(l > 0){
    x = random(426, 852);
    y = random(300, 400);
    noFill();
    stroke(255, 0, 255);
    square(x, y, l);
    }
  } 
}
