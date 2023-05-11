package practice_project_1;

public class MyRunnable implements Runnable {
    
    public void run() {
        
        System.out.println("Hello from a new thread(runnable)!");
    }
    
    public static void main(String[] args) {
        
        MyRunnable runnable = new MyRunnable();
             
        Thread thread = new Thread(runnable);
        
        thread.start();
    }
}
