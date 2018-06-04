byte n = 0, finish = 0;

active [2] proctype p() {
   byte register, counter = 0;
   do :: counter = 10 -> break
      :: else ->
              register = n;
              register++;
              n = register;
              counter++
   od;
   finish++
}
 

active proctype WaitForFinish() {
   
    finish == 2;
    printf("n = %d\n", n)
}
    
