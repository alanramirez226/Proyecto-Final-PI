
//importo la librería
import oscP5.*;
import netP5.*;

//este es el objeto que recibe
OscP5 oscP5;
Circulo c;
Triangulo T;
Cuadrado q;
Stars s;


//esta será la dirección donde voy a enviar mis mensajes
NetAddress direccionRemota;

PImage i;
int l, t, p;

void setup() {
  size(1280, 720);
  i = loadImage("fondo.png");
  //inicializo el objeto oscPs, el parámetro es el puerto donde va a escuchar los mensajes entrantes
  oscP5 = new OscP5(this, 12000);
  c = new Circulo(t);
  q = new Cuadrado(l);
  T = new Triangulo(p);
  s = new Stars();
  // inicializo el objeto NetAddress pasando la dirección IP y el puerto de los mensajes salientes
  // 127.0.0.1 es mi localhost
  direccionRemota = new NetAddress("10.0.0.16", 12000);
}

void draw() {   s.Dibujar();
  
  c.Dibujar();
  q.Dibujar();
  image(i, 0, 0);
  T.Dibujar();
  
}

//envío un mensajes OSC al presionar el boton del mouse
void mousePressed() {
  //genero un nuevo mensaje
  OscMessage mensaje = new OscMessage("/mouseX");

  //le agrego los datos, en este caso la posición en X del mouse
  mensaje.add(mouseX); 

  //envío el mensaje 
  oscP5.send(mensaje, direccionRemota);
}

//cada vez que se recibe un mensaje de osc en el puerto asignado, se llama esta función
void oscEvent(OscMessage theOscMessage) {  

  
   //si el mensaje está etiquetado como "/t"
  if (theOscMessage.checkAddrPattern("/t") == true) {
    //asigna el valor entero a la variable t
    c.t = theOscMessage.get(0).intValue();
  }
  
  //si el mensaje está etiquetado como "/l"
  if (theOscMessage.checkAddrPattern("/l") == true) {
    //asigna el valor entero a la variable l
    q.l = theOscMessage.get(0).intValue();
  }
  
  //si el mensaje está etiquetado como "/p"
  if (theOscMessage.checkAddrPattern("/p") == true) {
    //asigna el valor entero a la variable p
    T.p = theOscMessage.get(0).intValue();
  }
}
