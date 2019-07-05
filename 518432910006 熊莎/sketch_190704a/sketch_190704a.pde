import processing.serial.*;
Serial port;
float data;
int val;
float a;
int d;
void setup()
{
  port = new Serial(this, "COM3", 9600);
  size(600, 600);
  background(0);
  stroke(128);
  smooth();
}

void draw()
{
  background(0);

  if (port.available()>5)
  {

    for (int i= 0; i<4; i++)
    { 

      data=port.read();

      if (data==10)

        val=port.read();
    }
    if (val<=5)
      val=5;


    if (val>=20)
      val=20;   
    a=map(val, 5, 20, 5, 140);
    d=int(a);
    d=145-d;
    println(d);
  }    

  for (float x1=0; x1<=600; x1+=100)
  {

    for (float y1=0; y1<=600; y1+=100)
    {

      fill(242, 204, 47, 160);
      ellipse(x1, y1, d, d);
    }
  }
  for (float x1=50; x1<=550; x1+=100)
  {

    for (float y1=50; y1<=600; y1+=100)
    {
      fill(116, 193, 206, 160);        
      ellipse(x1, y1, d, d);
    }
  }
}
