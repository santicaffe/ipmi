PFont font;
String estado , pag1 , pag2, pag3;
int timer , x , x1, x2;
PImage portadacs;
PImage menucs; 
PImage ingamecs;

void setup() {
  //menu
  font = loadFont("MicrosoftYaHeiUI-48.vlw");
  textFont(font);
  size( 640, 480 );
  textAlign( CENTER, CENTER );
  textSize( 65 );
  fill(200);
  estado = "menu"; 
  frameRate( 60 );
  
  //pantalla 1
  portadacs = loadImage("portadacs.jpg");
  pag1 = "Counter-Strike 2 es un videojuego de disparos \n táctico en primera persona multijugador de 2023";
  x= 1020;
  
  //pantalla 2
  menucs = loadImage ("menucs.jpg");
  pag2= "el juego enfrenta a dos equipos, los antiterroristas \n y los terroristas, en varios modos de juego \n basados en objetivos";
  x1=1020;
  
  //pantalla 3
  ingamecs = loadImage("ingamecs.jpg");
  x2=1020;
  pag3="los jugadores tienen una sola vida por ronda y,\n si mueren, no podrán jugar hasta el comienzo \n de la siguiente ronda";
}



void draw() {
 
  if ( estado.equals("menu") ) {
    background(20);
    fill(255);
    text( "MENU", width/2, height/2 );
    circle( width/2, height/4*3, 50 );

//PANTALLA 1

  } else if (estado.equals("p1") ) {
    textSize (30);
    fill(10);
    background(portadacs);
      if(x>=-380){
      x=x-2;
      }
    text( pag1,x, height/4 );
    timer++; 
    //reset del texto
   if(x==-380){
   x=1020;
   }
    
    
    if( timer >= 600 ){ 
      estado = "p2";
      timer = 0;
    }
    
//PANTALLA 2

    } else if (estado.equals("p2") ) {
      background(menucs);
      textSize(30);
      fill(15);
      text( pag2, x1, height/2 );
         if(x1>=-380){
        x1--;
        }
      timer++;
       if(x1==-380){
     x1=1020;
     }
      
      if( timer >= 1200 ){
        estado = "p3";
        timer = 0;
      }
      
  //PANTALLA3
  
   } else if (estado.equals("p3") ) {
      background(ingamecs);
      textSize(30);
      fill(15);
      text( pag3, x2, height/2 );
         if(x2>=-380){
        x2--;
        }
      timer++;
       if(x2==-380){
     x2=1020;
     }
      
      if( timer >= 1200 ){
        estado = "p4";
        timer = 0;
      }
      
  //PANTALLA 4
    } else if (estado.equals("p4") ) {
     background(255);
     fill(20);
      text( "Volver al inicio", width/2, 50 );
        circle( width/2, height/4*3, 50 );
      //consola
      println( estado );
    }
  }



//MOUSE
void mousePressed() {
  // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
  if( estado.equals("menu") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";
    }
  }  
  if( estado.equals("p4") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "menu";
    }
  }
}
