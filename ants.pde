class ants
{
 PVector pos;
 int counter;
 int speed;
 int random;
 int size;
 color c;
 int index;
 ants(PVector p, int s, int sizes, color col)
 {
  pos = p;
  speed = s;
  size = sizes;
  counter = (int)random(10,60);
  random = (int)random(0,4);
  c = col;
 }
 
 void drawme()
 {
  if((pos.x>0)&&(pos.x<width)&&(pos.y>0)&&(pos.y<height))
  {
  index = int(pos.x)+(int(pos.y)*width);
  noStroke();
  c = n.pixels[index];
  fill(c);
  ellipse(pos.x,pos.y,size,size); 
  }
 }
 
 void update()
 { 
  counter--;
  if(counter>0)
  {
  if(random==0)
   {
    pos.x+=speed; 
   }
   else if(random==1)
   {
   pos.x-=speed; 
   }
   else if(random==2)
   {
   pos.y+=speed; 
   }
   else if(random==3)
   {
   pos.y-=speed; 
   }
  }
  if(counter<0)
  {
   counter = (int)random(10,60); 
   random = (int)random(0,4);
  }
  if(pos.x>width)
  {
   random= 1;   
  }
  else if(pos.y>height)
  {
    random= 3;   
  }
  else if(pos.x<0)
  {
   random = 0;
  }
  else if(pos.y<0)
  {
    random = 2;
  }
}
}
