int f = 2;
int s = 0;
PImage a;
PImage b;

void setup()
{
  size(400, 300);
  noStroke();
  a=loadImage("Snowman1.png");
  b=loadImage("Snowman2.png");
}

void draw()
{
  storm();
  background(110, 125, 165);
  ground();
  snowman();
  snow();
  instructions();
}


void ground()
{
  fill(240);
  rect(0, 250, 400, 50);
}

void snow()
{
  fill(int(random(210,255)));
  int n = 1;
  while (n<=100)
  {
    pushMatrix();
    translate(200,150);
    rotate(.6);
    ellipse(int(random(-251,251)), int(random(-221,221)), int(random(3,7)), int(random(7,11)));
    popMatrix();
    n++;
  }
}

void storm()
{
  frameRate(f);
  if (key=='z')
  {
    f=2;
  }
  if (key=='x')
  {
    f=30;
  }
}

void snowman()
{
  s=s+1;
  if (s>1)
  {
    s=0;
  }
  
  if (s==0)
  {
  image(a, 200, 100, 200, 200);
  }
  
  if (s==1)
  {
  image(b, 200, 100, 200, 200);
  }
}

void instructions()
{
  fill(150);
  textSize(11);
  text("Press X to make a storm. Press Y to make it calm again.", 10, 280);
}

