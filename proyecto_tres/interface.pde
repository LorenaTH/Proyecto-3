interface Jugadores{
 void display(); 
 
}
 class Jungkook implements Jugadores{
  String nombre;
  int ataque;
  int ataque2;
  int dibujar;
  int x,y;

  Jungkook(String nombre_, int ataque_, int ataque2_, int dibujar_, int x_, int y_){
  
    nombre = nombre_;
    ataque = ataque_;
    ataque2 = ataque2_;
   dibujar = dibujar_;
    x= x_;
    y = y_; 
 } 
  void display(){ 
   image(kookie,x,y);

  }
 } 

 
 class Suga implements Jugadores{
   String nombre;
  int ataque;
  int ataque2;
  int dibujar;
  int x,y;


  Suga (String nombre_, int ataque_, int ataque2_, int dibujar_, int x_, int y_){
    
    nombre = nombre_;
    ataque = ataque_;
    ataque2 = ataque2_;
   dibujar = dibujar_;
    x= x_;
    y = y_;
}
void display(){ 
   
 image(suga,x,y);

  }
 } 
 
 class Taehyung implements Jugadores{
    String nombre;
  int ataque;
  int ataque2;
  int dibujar;
  int x,y;


  Taehyung(String nombre_, int ataque_, int ataque2_, int dibujar_, int x_, int y_){
    
    nombre = nombre_;
    ataque = ataque_;
    ataque2 = ataque2_;
   dibujar = dibujar_;
    x= x_;
    y = y_;
  }
  void display(){ 
     image(tae,x,y);

  }
 }
 
 class Jin implements Jugadores{
   String nombre;
  int ataque;
  int ataque2;
  int dibujar;
  int x,y;


  Jin(String nombre_, int ataque_, int ataque2_, int dibujar_, int x_, int y_){
    
    nombre = nombre_;
    ataque = ataque_;
    ataque2 = ataque2_;
   dibujar = dibujar_;
    x= x_;
    y = y_;
  }
  void display(){ 
    image(jin,x,y);
  }
 } 
 
 class JHope implements Jugadores{
   String nombre;
  int ataque;
  int ataque2;
  int dibujar;
  int x,y;


  JHope(String nombre_, int ataque_, int ataque2_, int dibujar_, int x_, int y_){
    
    nombre = nombre_;
    ataque = ataque_;
    ataque2 = ataque2_;
   dibujar = dibujar_;
    x= x_;
    y = y_;
  }
  void display(){ 
   image(hobi,x,y);
  }

 }
