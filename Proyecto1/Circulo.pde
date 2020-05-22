class Circulo  {
  
 float x; 
 float y; 
 int t;
  
  Circulo(int t_){
    this.t = t_;
  }
  
  void Dibujar(){
    x = random(426, 852);
    y = random(200, 300);
    noFill();
    strokeWeight(random(2, 15));
    stroke(0, 255 ,255);
    circle(x, y, t);
  } 
}
