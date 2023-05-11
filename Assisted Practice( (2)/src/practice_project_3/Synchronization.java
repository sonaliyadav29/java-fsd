package practice_project_3;

public class Synchronization{

    public static void main(String[] args) {
        Counter counter = new Counter();
        
        Thread thread1 = new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < 50000; i++) {
                    counter.increment();
                }
            }
        });
        
        Thread thread2 = new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < 50000; i++) {
                    counter.increment();
                }
            }
        });
        
        thread1.start();
        thread2.start();
        
        try {
            thread1.join();
            thread2.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        
        System.out.println("Counter value: " + counter.getCount());
    }
    
    private static class Counter {
        private int count = 0;
        
        public synchronized void increment() {
            count++;
        }
        
        public int getCount() {
            return count;
        }
    }
}

