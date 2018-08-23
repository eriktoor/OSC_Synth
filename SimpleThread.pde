
class SimpleThread extends Thread { 
  boolean running; 
  int wait; 
  String id; 
  int count; 
  
  //Constructor, create the thread
  //It is not running by default kind of like a function to call 
  
  SimpleThread(int w, String s) { 
    wait = w; 
    running = false; 
    id = s; 
    count = 0; 
  }
  
}
