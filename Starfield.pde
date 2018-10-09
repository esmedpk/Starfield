NormalParticle[] normalParticles = new NormalParticle[1000];
void setup()
{
  noStroke();
  size(500,500);
  for(int i = 0; i < normalParticles.length ; i++)
  {
    normalParticles[i] = new NormalParticle();
  }
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
class NormalParticle
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
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  public void show()
  {
    fill(255,0,0);
    ellipse((float)myX,(float)myY,15,15);
  }
  public void move()
  {
  }
}
class JumboParticle //uses inheritance
{
  //your code here
}

