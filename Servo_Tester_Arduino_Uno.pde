
import processing.serial.*;
import cc.arduino.*;
import controlP5.*;

Arduino arduino;
ControlP5 cp5;

Slider Servo1;
Slider Servo2;
Slider Servo3;
Slider Servo4;
Slider Servo5;
Slider Servo6;

Slider Servo7;
Slider Servo8;
Slider Servo9;
Slider Servo10;
Slider Servo11;
Slider Servo12;

Button Boton1;
Button Boton2;
Button Boton3;


void setup() 
{
  size(950, 900);//Definir el tamano de la pantalla
  
  println(Arduino.list());// Mostrar los puertos COM disponibles
  arduino = new Arduino(this, Arduino.list()[0], 57600);//En los corchetes debes introducir el numero del COM empezando de 0,1,2,3 dependiendo los dispositivos que aparescan en la lista
  cp5 = new ControlP5(this);  
  
  arduino.pinMode(2, Arduino.SERVO);//Definir el pin 2 para la conexion de un servomotor
  arduino.pinMode(3, Arduino.SERVO);//Definir el pin 3 para la conexion de un servomotor
  arduino.pinMode(4, Arduino.SERVO);//Definir el pin 4 para la conexion de un servomotor
  arduino.pinMode(5, Arduino.SERVO);//Definir el pin 5 para la conexion de un servomotor
  arduino.pinMode(6, Arduino.SERVO);//Definir el pin 6 para la conexion de un servomotor
  arduino.pinMode(7, Arduino.SERVO);//Definir el pin 7 para la conexion de un servomotor
  arduino.pinMode(8, Arduino.SERVO);//Definir el pin 8 para la conexion de un servomotor
  arduino.pinMode(9, Arduino.SERVO);//Definir el pin 9 para la conexion de un servomotor
  arduino.pinMode(10, Arduino.SERVO);//Definir el pin 10 para la conexion de un servomotor
  arduino.pinMode(11, Arduino.SERVO);//Definir el pin 11 para la conexion de un servomotor
  arduino.pinMode(12, Arduino.SERVO);//Definir el pin 12 para la conexion de un servomotor
  arduino.pinMode(13, Arduino.SERVO);//Definir el pin 13 para la conexion de un servomotor
  
  Servo1 = cp5.addSlider("1").setRange(0,180).setValue(90).setPosition(110,110).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo2 = cp5.addSlider("2").setRange(0,180).setValue(90).setPosition(110,210).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo3 = cp5.addSlider("3").setRange(0,180).setValue(90).setPosition(110,310).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo4 = cp5.addSlider("4").setRange(0,180).setValue(90).setPosition(110,410).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo5 = cp5.addSlider("5").setRange(0,180).setValue(90).setPosition(110,510).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo6 = cp5.addSlider("6").setRange(0,180).setValue(90).setPosition(110,610).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  
  Servo7 = cp5.addSlider("7").setRange(0,180).setValue(90).setPosition(590,110).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo8 = cp5.addSlider("8").setRange(0,180).setValue(90).setPosition(590,210).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo9 = cp5.addSlider("9").setRange(0,180).setValue(90).setPosition(590,310).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo10 = cp5.addSlider("10").setRange(0,180).setValue(90).setPosition(590,410).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo11 = cp5.addSlider("11").setRange(0,180).setValue(90).setPosition(590,510).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  Servo12 = cp5.addSlider("12").setRange(0,180).setValue(90).setPosition(590,610).setSize(270,25).setNumberOfTickMarks(270).setLabelVisible(false).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  
  //Boton1 = cp5.addButton("100 grados").setValue(0).setPosition(200,700).setSize(100,50).setLabelVisible(true).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  //Boton2 = cp5.addButton("Boton2").setValue(0).setPosition(330,50).setSize(100,50).setLabelVisible(true).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
  //Boton3 = cp5.addButton("Boton3").setValue(0).setPosition(460,50).setSize(100,50).setLabelVisible(true).setColorForeground(color(255,0,0)).setColorBackground(color(0,255,0)).setColorActive(color(0,0,255));
}
 
void draw() 
{
  background(color(10,10,10));  
  arduino.servoWrite(2, int(Servo1.getValue()));
  arduino.servoWrite(3, int(Servo2.getValue()));
  arduino.servoWrite(4, int(Servo3.getValue()));
  arduino.servoWrite(5, int(Servo4.getValue()));
  arduino.servoWrite(6, int(Servo5.getValue()));
  arduino.servoWrite(7, int(Servo6.getValue()));
  
  arduino.servoWrite(8, int(Servo7.getValue()));
  arduino.servoWrite(9, int(Servo8.getValue()));
  arduino.servoWrite(10, int(Servo9.getValue()));
  arduino.servoWrite(11, int(Servo10.getValue()));
  arduino.servoWrite(12, int(Servo11.getValue()));
  arduino.servoWrite(13, int(Servo12.getValue()));
  
  textSize(50);
  text("Servo Tester", 300, 75);
  
  textSize(25);
  text("Servo1", 20, 125);
  text("Servo2", 20, 225);
  text("Servo3", 20, 325);
  text("Servo4", 20, 425);
  text("Servo5", 20, 525);
  text("Servo6", 20, 625);
  
  text("Servo7", 500, 125);
  text("Servo8", 500, 225);
  text("Servo9", 500, 325);
  text("Servo10", 490, 425);
  text("Servo11", 490, 525);
  text("Servo12", 490, 625);
  
  
  textSize(18);
  text("[Pin 2]", 25, 150);
  text("[Pin 3]", 25, 250);
  text("[Pin 4]", 25, 350);
  text("[Pin 5]", 25, 450);
  text("[Pin 6]", 25, 550);
  text("[Pin 7]", 25, 650);
  
  text("[Pin 8]", 510, 145);
  text("[Pin 9]", 510, 245);
  text("[Pin 10]", 510, 345);
  text("[Pin 11]", 510, 445);
  text("[Pin 12]", 510, 545);
  text("[Pin 13]", 510, 645);
  
  textSize(25);
  text(int(Servo1.getValue())+"°", 390, 130);
  text(int(Servo2.getValue())+"°", 390, 230);
  text(int(Servo3.getValue())+"°", 390, 330);
  text(int(Servo4.getValue())+"°", 390, 430);
  text(int(Servo5.getValue())+"°", 390, 530);
  text(int(Servo6.getValue())+"°", 390, 630);
  
  text(int(Servo7.getValue())+"°", 875, 130);
  text(int(Servo8.getValue())+"°", 875, 230);
  text(int(Servo9.getValue())+"°", 875, 330);
  text(int(Servo10.getValue())+"°", 875, 430);
  text(int(Servo11.getValue())+"°", 875, 530);
  text(int(Servo12.getValue())+"°", 875, 630);


/*public void controlEvent(ControlEvent theEvent) 
{
  println(theEvent.getController().getName());
}*/
/*
public void Boton1(int theValue) 
{
  println(theValue);
  Servo1.setValue(0);
  Servo2.setValue(0);
  Servo3.setValue(0);
  Servo4.setValue(0);
  Servo5.setValue(0);
  Servo6.setValue(0);
}
public void Boton2(int theValue) 
{
  println(theValue);
  Servo1.setValue(90);
  Servo2.setValue(90);
  Servo3.setValue(90);
  Servo4.setValue(90);
  Servo5.setValue(90);
  Servo6.setValue(90);
}
public void Boton3(int theValue) 
{
  println(theValue);
  Servo1.setValue(180);
  Servo2.setValue(180);
  Servo3.setValue(180);
  Servo4.setValue(180);
  Servo5.setValue(180);
  Servo6.setValue(180);
}
*/
}