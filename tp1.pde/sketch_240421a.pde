PImage playita;

void setup() {
  size( 800, 400 );
  background( 135, 206, 235 );


  
  playita = loadImage( "paisaje.jpg"); 
}

void draw(){
  
  image( playita, 400, 0 );
  
  
  noStroke();
  fill( 0, 130, 255 );
  rect( 0, 255, 401, 255 );
  
  noStroke();
  fill( 0, 200, 170 );
  rect( 0, 264, 401, 264 );
  
  stroke( 0 );
  fill( 0, 0, 255 );
  ellipse( 320, 294, 40, 40 ); 
  
  noStroke();
  fill( 220 );
  rect( 0, 282, 401, 282 );
  
  noStroke();
  fill( 0, 100, 50 );
  rect( 0, 303, 401, 303 );  
  
  noStroke();
  fill( 78, 59, 49 );
  quad( 0, 282, 14, 282, 305, 400, 0, 400 );
  
  fill( 161, 130, 98 );
  triangle( 0, 400, 0, 321, 55, 400 );
  
  stroke( 0 );
  fill( 0 );
  line( 14, 289, 232, 400);
  
  stroke( 0 );
  fill( 0 );
  line( 14, 300, 171, 400);
  
  stroke( 0 );
  fill( 0 );
  line( 14, 310, 110, 400);
  
  stroke( 0 );
  fill( 0 );
  line( 14, 310, 0, 307 );
  
  stroke( 0 );
  fill( 0 );
  line( 14, 300, 0, 297);
  
  stroke( 0 );
  fill( 0 );
  line( 14, 289, 0, 287);
  
  noStroke();
  fill( 161, 130, 98 );
  quad( -20, 303, 14, 310, 110, 400, 55, 400 );
  
  stroke( 0 );
  fill( 0 );
  line( 15, 282, 303, 399);
  
  stroke( 0 );
  fill( 0 );
  line( 320, 281, 320, 294);

  noStroke();
  fill( 200 );
  ellipse( 188, 150, 40, 10);
  
  noStroke();
  ellipse( 30, 240, 100, 15);
  
  noStroke();
  ellipse( 120, 240, 100, 15);
  
  noStroke();
  ellipse( 210, 238, 100, 20);
  
  noStroke();
  ellipse( 300, 243, 100, 10);
  
  noStroke();
  ellipse( 370, 243, 60, 10);
  
  noStroke();
  ellipse( 370, 240, 60, 10);
  
  noStroke();
  ellipse( 310, 240, 60, 10);
  
  noStroke();
  ellipse( 328, 234, 140, 30);
  

  println( mouseX + " / " + mouseY );

}
