package practice_project_6;
import java.util.Scanner;
public class Handling {

	    public static void main(String[] args) {
	        Scanner scanner = new Scanner(System.in);
	        
	        try {
	            System.out.print("Enter an integer: ");
	            int num1 = scanner.nextInt();
	            System.out.print("Enter another integer: ");
	            int num2 = scanner.nextInt();
	            int result = num1 / num2;
	            System.out.println("Result: " + result);
	        }
	        
	        catch (ArithmeticException e) {
	            System.out.println("Error: Cannot be divide by zero.");
	        }
	        
	        catch(Exception e) {
	            System.out.println("Error: " + e.getMessage());
	        } 
	        
	        finally {
	            scanner.close();
	        }
	    }
	}
