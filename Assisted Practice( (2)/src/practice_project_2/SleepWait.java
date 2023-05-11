package practice_project_2;

public class SleepWait {

    public static void main(String[] args) {
        
        final Object lock = new Object();
        
        Thread thread1 = new Thread(new Runnable() {
            public void run() {
                synchronized (lock) {
                    try {
                        System.out.println("Thread 1 started and waiting...");
                        lock.wait(1000);
                        System.out.println("Thread 1 resumed after 2 seconds.");
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        
        Thread thread2 = new Thread(new Runnable() {
            public void run() {
                synchronized (lock) {
                    try {
                        System.out.println("Thread 2 started and is sleeping...");
                        Thread.sleep(1000);
                        System.out.println("Thread 2 resumed after 2 seconds.");
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        
        thread1.start();
        thread2.start();
    }
}
