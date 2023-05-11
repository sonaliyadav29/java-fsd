package practice_project_4;

public class TryCatch  {
    public static void main(String[] args) {
        try {
            int numerator = 10;
            int denominator = 0;
            int result = numerator / denominator;
            System.out.println(result);
        } catch (ArithmeticException e) {
            System.out.println("An error has occurred: " + e.getMessage());
        }
    }
}
