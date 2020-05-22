class Stars{
PVector location;
PVector velocity;

Stars(){
  location = new PVector(426, 852);
  velocity = new PVector(3, 5);
 }

void Dibujar(){
  noStroke();
  fill(50, 50, 50, 10);
  rect(0, 0, width, height);
  
  //Sumamos la velocidad actual a la ubicación
  location.add(velocity);
  
  //Necesitamos referirnos a los componentes individuales en nuestro PVector
  if(( location.x > 852 )){
    location.x = 426;
  } else if (location.x < 0){
    location.x = 852;
  }
  
  if(( location.y > 480 )){
    location.y = 120;
  } else if(location.y < 0){
    location.y = 480;
  }
  
  //Pintamos el círculo en la ubicación (x,y)
  noStroke();
  fill(50, 0, 255);
  ellipse(location.x, location.y, 20, 20);
  ellipse(location.x, location.y, 20, 20);
 }
}
