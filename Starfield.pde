Particle[] normalParticles = new Particle[1000];
void setup()
{
  noStroke();
  size(500,500);
  for(int i = 0; i < normalParticles.length ; i++)
  {
    normalParticles[i] = new NormalParticle();
  }
  normalParticles[0] = new JumboParticle();
  normalParticles[1] = new OddballParticle();
}

void draw()
{
  background(0);
  for(int i = 0; i < normalParticles.length; i++)
  {
    normalParticles[i].show();
    normalParticles[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX,myY,mySpeed,myAngle;
  NormalParticle() //constructor
  {
    myX = 250;
    myY = 250;
    myAngle = (Math.random()*3)*Math.PI;
    mySpeed = (Math.random()*11);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    int x = (int)(Math.random()*255)+1;
    int y = (int)(Math.random()*255)+1;
    int z = (int)(Math.random()*255)+1;
    fill(x, y, z);
    ellipse((float)myX,(float)myY,5,5);
  }
}
interface Particle
{
  public void move();
  public void show();
}
class OddballParticle implements Particle//uses an interface
{
  int oddX, oddY;
  OddballParticle()
  {
    oddX = 0;
    oddY = 500;
  }
  public void move()
  {
    oddX = oddX + 1;
    if(oddX > 500)
    {
      oddX = 0;
    }
    oddY = oddY - 1;
    if(oddY < 0)
    {
      oddY = 500;
    }
  }
  public void show()
  {
    fill(3,160,255);
    rect((float)oddX,(float)oddY,20,20);
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill(255,255,255);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

