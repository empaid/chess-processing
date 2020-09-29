class Animator{
  PVector per;
  PVector vel = new PVector(0,0);
  PVector  acc;
  float damping = 1;
  float k = 0.05;
  PVector temp;
  
  Animator(float Length){    ///j = 0  inside j =1 outside
    
    //per = new PVector(Length,0);

    //temp = new PVector(Length/2,0);
   per = new PVector(0.90 * Length,0);

    temp = new PVector(Length,0);
   
 
 }
 
 float update(){
  acc = PVector.sub(per,temp);
  float stretch = acc.mag();
  acc.normalize();
  acc.mult( k* stretch);
  vel.add(acc);
  vel.mult(damping);
  temp.add(vel);
   return temp.x;

   
   
 }
  
   
}
