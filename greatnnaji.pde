ants[] a;
PImage n;
//i did question 6 and 7 in the same file since they just build on each other
void setup()
{
  a = new ants[100];
  size(546,340);
  for(int i=0;i<a.length;i++)
  {
  a[i] = new ants(new PVector(random(0,width),random(0,height)),1,(int)random(10,20),0);
  }
  n = loadImage("nature.jpg");
}

void draw()
{
 loadPixels();
 image(n,0,0);
 updatePixels();
 for(int i=0;i<a.length;i++)
 {
   a[i].update();//update before you draw
   a[i].drawme();
 }
}
