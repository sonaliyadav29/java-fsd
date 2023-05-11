package practice_project_5;

public class CustomExceptions 
 {
    public static void main(String[] args) {
        try {
            int result = divide(20, 0);
            System.out.println(result);
        } catch (ArithmeticException e) {
            System.out.println("An error occurred: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("An unknown error occurred: " + e.getMessage());
        } finally {
            System.out.println("Finally block executed.");
        }

        try {
            throw new MyException("Custom exception message");
        } catch (MyException e) {
            System.out.println("Custom exception caught: " + e.getMessage());
        }
    }

    public static int divide(int numerator, int denominator) throws ArithmeticException {
        if (denominator == 0) {
            throw new ArithmeticException("Cannot be divide by zero.");
        }
        return numerator / denominator;
    }
}

class MyException extends Exception {
    public MyException(String message) {
        super(message);
    }
}
