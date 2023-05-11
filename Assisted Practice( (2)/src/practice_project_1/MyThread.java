package practice_project_1;

public class MyThread extends Thread {
    
    public void run() {
        // Code to be executed in the new thread
        System.out.println("Hello from a new thread!");
    }
    

	public static void main(String[] args) {
		// TODO Auto-generated method stub
     Thread thread = new MyThread();
        
        // Start the thread
        thread.start();
	}

}