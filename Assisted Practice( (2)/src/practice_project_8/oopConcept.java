package practice_project_8;

public class oopConcept {
		    public static void main(String[] args)
		    {		    	
		      // create objects of the classes
		        Rectangle rect = new Rectangle(2, 4);
		        Circle circ = new Circle(3);

		        // call methods on the objects
		        System.out.println("Rectangle area: " + rect.calculateArea());
		        System.out.println("Circle circumference: " + circ.calculateCircumference());

		        // Encapsulation
		        rect.setWidth(7);
		        System.out.println("New rectangle area: " + rect.calculateArea());

		        //Inheritance
		        Square sq = new Square(5);
		        System.out.println("Square area: " + sq.calculateArea());

		        // Polymorphism
		        Shape shape1 = new Rectangle(5, 9);
		        Shape shape2 = new Circle(7);
		        System.out.println("Shape 1 area: " + shape1.calculateArea());
		        System.out.println("Shape 2 circumference: " + shape2.calculateCircumference());
		    }
		}

		abstract class Shape {
		    abstract double calculateArea();
		    abstract double calculateCircumference();
		}

		class Rectangle extends Shape {
		    private double width;
		    private double height;

		    public Rectangle(double width, double height) {
		        this.width = width;
		        this.height = height;
		    }

		    public void setWidth(double width) {
		        this.width = width;
		    }

		    public double calculateArea() {
		        return width * height;
		    }

		    public double calculateCircumference() {
		        return 2 * (width + height);
		    }
		}

		class Circle extends Shape {
		    private double radius;

		    public Circle(double radius) {
		        this.radius = radius;
		    }

		    public double calculateArea() {
		        return Math.PI * radius * radius;
		    }

		    public double calculateCircumference() {
		        return 2 * Math.PI * radius;
		    }
		}

		class Square extends Rectangle {
		    public Square(double side) {
		        super(side, side);
		    }
		}

