import ddf.minim.*;


int pantalla; 
Jugadores uno;
Jugadores uno2;
Jugadores uno3;

Jugadores dos;
Jugadores dos2;
Jugadores dos3;

Jugadores tres;
Jugadores tres2;
Jugadores tres3;

Jugadores cuatro;
Jugadores cuatro2;
Jugadores cuatro3; 

Jugadores cinco;
Jugadores cinco2;
Jugadores cinco3;

int jugador1; 
int jugador2;
int vida1=15; 
int vida2=15; 
int turnojugador=0;
int vida=1;
int x,x2;
int y;

PImage kookie; 
PImage suga; 
PImage tae; 
PImage jin; 
PImage hobi; 

//imagenes pantallas
PImage portada;
PImage seleccion1;
PImage seleccion2;
PImage kookie2;
PImage suga2; 
PImage tae2; 
PImage jin2; 
PImage hobi2;

PImage batalla;
PImage ganador;

Minim minim;

AudioPlayer cancion1;
AudioPlayer cancion2;
AudioPlayer cancion3;
AudioPlayer cancion4;
AudioPlayer cancion5;
AudioPlayer cancion6;
AudioPlayer cancion7;


void setup(){  
  size(800,600);
 uno=new Jungkook("Jungkook",2, 3, 1, 60,245);
 uno2=new Jungkook("Jungkook",2,2,1,560,245);
 uno3=new Jungkook("Jungkook",2, 2, 1, 330, 310);
 
 dos=new Suga("Min",4, 5, 2, 60, 245);
 dos2=new Suga("Min",4, 5, 2, 560, 245);
 dos3=new Suga("Min", 4, 5, 2, 330, 310); 
 
 tres=new Taehyung("Vante",6, 7, 3, 60, 230);
 tres2=new Taehyung("Vante",6,7, 3, 560, 230);
 tres3=new Taehyung("Vante", 6, 7, 3, 335,295);
 
 cuatro=new Jin("Jinbo",8, 9, 4, 60, 245);
 cuatro2=new Jin("Jinbo",8, 9, 4, 560, 245);
 cuatro3=new Jin("Jinbo", 8, 9, 4, 330, 310);
 
 cinco=new JHope("hobi",9, 8, 5, 60, 245);
 cinco2=new JHope("Hobi", 9, 8, 5, 560, 245);
 cinco3=new JHope("hobi", 9, 8, 5, 330, 310);
 
  kookie = loadImage("kookie.png"); 
  suga = loadImage("suga.png"); 
  tae = loadImage("tae.png"); 
  jin = loadImage("jin.png"); 
  hobi = loadImage("hobi.png"); 
  
 portada = loadImage("portada.jpg"); 
 seleccion1 = loadImage("seleccion1.jpg"); 
 seleccion2 = loadImage("seleccion2.jpg"); 
 kookie2 = loadImage("Kookie2.jpg");
 suga2 = loadImage("suga2.jpg");
 tae2 = loadImage("tae2.jpg"); 
 jin2 = loadImage("jin2.jpg"); 
 hobi2 = loadImage("hobi2.jpg"); 
 
 batalla = loadImage("batalla2.jpg");
 ganador = loadImage("ganador.jpg");
 
 minim = new Minim(this);
 
 cancion1 = minim.loadFile("ddaeng1.mp3");
 cancion2 = minim.loadFile("Anyeonghaseyo.mp3"); 
 cancion3 = minim.loadFile("suga.mp3");
 cancion4 = minim.loadFile("tae1.mp3");
 cancion5 = minim.loadFile("jin.mp3");
 cancion6 = minim.loadFile("sprite.mp3");
 cancion7 = minim.loadFile("final.mp3");
  
cancion1.play();
}  


void draw(){ 
  switch(pantalla){ 
    //primera pantalla
    case 0: 
   image(portada,0,0);
    fill(255);
     rect(322,390,155,60);
    fill(255,0,0);
    textSize(50);
   text("Start",345,440);
    
    break;
    
 //segunda pantalla
    case 1: 
    size(800,600);
   image(seleccion1,0,0);
   image(kookie2,25,50);
   image(suga2,25,310);
   image(tae2,300,220);
   image(jin2,580,50);
   image(hobi2,580,310);
   
   break;
   
   
   //tercera pantalla
   case 2: 
   
   image(seleccion2,0,0);
   
   image(kookie2,25,50);
   image(suga2,25,310);
   image(tae2,300,220);
   image(jin2,580,50);
   image(hobi2,580,310);
   


    if(jugador1==1){
   stroke(255,0,0);  
  fill(0);
rect(25,50,200,242);
}

if(jugador1==2){
  stroke(255,0,0);
 fill(0);
rect(25,310,200,242);
}

if(jugador1==3) {
  stroke(255,0,0);
  fill(0);
rect(300,220,200,262);
}
  
  if(jugador1==4){
    stroke(255,0,0);
fill(0);
rect(580,50,202,245);
}
  
 if(jugador1==5){
    stroke(255,0,0);
fill(0);
rect(580,310,202,246);
  }
   
 break; 
 
 //pantalla cuatro
 case 3: 
 size(800,600);
 image(batalla,0,0);

if(vida1<vida2){
  vida=vida1;
}
noStroke();
fill(0);
rect(160,50,40,40);
fill(255);
text(vida2,167,75);

fill(0);
rect(670,50,40,40);
fill(255);
text(vida1,678,75);

if(vida2<vida1){
  vida=vida2;
}

 
 
 stroke(0);
 fill(245,2,2);
 rect(48,50,100,40);
 fill(255);
 textSize(17);
 text("Jugador 1",57,75);
 stroke(0);
 fill(2,245,2);
 rect(555,50,100,40);
 fill(255);
 textSize(17);
 text("Jugador 2",567,75);
 
 // para las vidas
 

 if(jugador1==1){
  uno.display(); 
 stroke(0);
  fill(245,2,2);
rect(50,450,180,30);
rect(50,500,180,30);
textSize(20);
fill(0);
text("Golden Maknae",70,472);
text("Pardon",102,522);

}
 
 if(jugador1==2){
  
   dos.display();
      stroke(0);
  fill(245,2,2);
rect(50,450,180,30);
rect(50,500,180,30);
textSize(20);
fill(0);
text("Swag",112,472);
text("Three dollars",72,522);
 }
 
 if(jugador1==3){
  
   tres.display();
     stroke(0);
  fill(245,2,2);
rect(50,450,180,30);
rect(50,500,180,30);
textSize(20);
fill(0);
text("Panda Express",70,472);
text("Gucci",105,522);
 }
 
 if(jugador1==4){
   cuatro.display(); 
    stroke(0);
  fill(245,2,2);
rect(50,450,180,30);
rect(50,500,180,30);
textSize(20);
fill(0);
text("Dad jokes",90,472);
text("Stob it",105,522);
 }
 
 if(jugador1==5){
 cinco.display();
     stroke(0);
  fill(245,2,2);
rect(50,450,180,30);
rect(50,500,180,30);
textSize(20);
fill(0);
text("I hate snakeu",75,472);
text("Sprite",110,522);
 }
 
 if(jugador2==1){
   uno2.display();
   stroke(0);
  fill(2,245,2);
rect(570,450,180,30);
rect(570,500,180,30);
textSize(20);
fill(0);
text("Golden Maknae",590,472);
text("Pardon",622,522);
 }

 if(jugador2==2){
   dos2.display();
   stroke(0);
  fill(2,245,2);
rect(570,450,180,30);
rect(570,500,180,30);
textSize(20);
fill(0);
text("Swag",635,472);
text("Three dollars",592,522);
 }
 
 if(jugador2==3){
   tres2.display();
   stroke(0);
  fill(2,245,2);
rect(570,450,180,30);
rect(570,500,180,30);
textSize(20);
fill(0);
text("Panda Express",590,472);
text("Gucci",625,522);
 }
 
 if(jugador2==4){
   cuatro2.display();
   stroke(0);
  fill(2,245,2);
rect(570,450,180,30);
rect(570,500,180,30);
textSize(20);
fill(0);
text("Dad jokes",610,472);
text("Stob it",625,522);
 }
 
 if(jugador2==5){
   cinco2.display();
   stroke(0);
  fill(2,245,2);
rect(570,450,180,30);
rect(570,500,180,30);
textSize(20);
fill(0);
text("I hate snakeu",595,472);
text("Sprite",630,522);
 }


if(turnojugador%2==0){
  fill(255);
 rect(48,50,100,40);
 fill(0);
 textSize(17);
 text("Jugador 1",57,75);
}
else{
  if(turnojugador%2==1){
 fill(255);
 rect(555,50,100,40);
 fill(0);
 textSize(17);
 text("Jugador 2",567,75);
 
  }
}

 
 
 if(vida<=0){
   pantalla=4;
 }
 
 break; 
 case 4: 
 image(ganador,0,0);
stroke(0);
fill(245,2,2);
rect(40,390,150,45); 
fill(0);
textSize(25);
text("Exit",89,422);
fill(2,245,2);
rect(610,390,150,45);
fill(0);
textSize(25); 
text("Play again",625,422);


 if(vida1<=0){
   if(jugador1==1){
      uno3.display(); 
   }
 } 
 
 if(vida1<=0){
   if(jugador1==2){
    dos3.display(); 
   }
 } 

if(vida1<=0){
   if(jugador1==3){
     tres3.display(); 
   }
}

if(vida1<=0){
   if(jugador1==4){
    cuatro3.display(); 
   }
}

if(vida1<=0){
   if(jugador1==5){
   cinco3.display(); 
   }
}

else{
  
  if(vida2<=0){
   if(jugador2==1){
    uno3.display(); 
   }
}

if(vida2<=0){
   if(jugador2==2){
    dos3.display(); 
   }
}

if(vida2<=0){
   if(jugador2==3){
     tres3.display(); 
   }
}
 
  if(vida2<=0){
   if(jugador2==4){
      cuatro3.display(); 
   }
}

if(vida2<=0){
   if(jugador2==5){
    cinco3.display(); 
   }
}
  
}

 break;
  }
}


void mousePressed(){ 
  switch(pantalla){ 
    //primera pantalla
    case 0:
    if((mouseX>322)&& (mouseX<477) &&(mouseY>390) && (mouseY<450)){
  
    pantalla=1;
    cancion1.pause();
    }
    break;
    //segunda pantalla
    case 1: 
    //kookie
    if((mouseX>25)&& (mouseX<250) &&(mouseY>50) && (mouseY<292)){
      jugador1=1;
      cancion2.play();
      pantalla=2;
  
}
       //suga
      if((mouseX>25)&& (mouseX<250) &&(mouseY>310) && (mouseY<552)){
      jugador1=2;
      pantalla=2;
      cancion3.play();
      }
      
      //tae
       if((mouseX>300)&& (mouseX<500) &&(mouseY>220) && (mouseY<482)){
      jugador1=3;
      pantalla=2;
      cancion4.play();
      }
      
      //jin
      if((mouseX>580)&& (mouseX<782) &&(mouseY>50) && (mouseY<295)){
      jugador1=4;
      pantalla=2;
      cancion5.play();
      } 
      
      //Hobi
      if((mouseX>580)&& (mouseX<782) &&(mouseY>310) && (mouseY<556)){
      jugador1=5;
      pantalla=2;
      cancion6.play();
      
      }
      
      //tercera pantalla
    case 2: 
    //kookie
    if(jugador1!=1&(mouseX>25)&& (mouseX<250) &&(mouseY>50) && (mouseY<292)){
      jugador2=1; 
      pantalla=3;
      cancion7.play();
   
    }
    
    //suga
     if(jugador1!=2&(mouseX>25)&& (mouseX<250) &&(mouseY>310) && (mouseY<552)){
      jugador2=2; 
      pantalla=3;
      cancion7.play();
    }
      
      //tae 
      if(jugador1!=3&(mouseX>300)&& (mouseX<500) &&(mouseY>220) && (mouseY<482)){
      jugador2=3; 
      pantalla=3;
      cancion7.play();
      }
      
      //jin 
      if(jugador1!=4&(mouseX>580)&& (mouseX<782) &&(mouseY>50) && (mouseY<295)){
      jugador2=4; 
      pantalla=3;
      cancion7.play();
      }
   
      //Hobi 
      if(jugador1!=5&(mouseX>580)&& (mouseX<782) &&(mouseY>310) && (mouseY<556)){
      jugador2=5; 
      pantalla=3;
      cancion7.play();
      }
      
  
  
  //cuarta pantalla para las vidas
  case 3: 
  
  if((mouseX>50)&& (mouseX<230) &&(mouseY>450) && (mouseY<480)){
   turnojugador +=1; 
 if(turnojugador%2==0){
   vida1=vida1-3;
 }
  }
  if((mouseX>50)&& (mouseX<230) &&(mouseY>500) && (mouseY<530)){
   turnojugador +=1; 
 if(turnojugador%2==0){
   vida1=vida1-2;
 }
 
  }
   if((mouseX>570)&& (mouseX<750) &&(mouseY>450) && (mouseY<480)){
      turnojugador +=1; 
 if(turnojugador%2==1){
   vida2=vida2-3;
   }
}  
if((mouseX>570)&& (mouseX<750) &&(mouseY>500) && (mouseY<530)){
      turnojugador +=1; 
 if(turnojugador%2==1){
   vida2=vida2-2;
   }
}  
break;


case 4: 

 if((mouseX>610)&& (mouseX<760) &&(mouseY>390) && (mouseY<435)){
   pantalla=0;
   jugador1=0; 
   jugador2=0;
   vida1=15; 
   vida2=15; 
   turnojugador=0;
   vida=1;
   redraw();
   cancion1.play();
   cancion7.pause();
 }
 
 else{
   if((mouseX>40)&& (mouseX<190) &&(mouseY>390) && (mouseY<435)){
     exit();
   }
 }
}
}
