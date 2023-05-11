package practice_project_9;


	interface Animal {
	    void eat();
	}

	interface Mammal extends Animal {
	    void breathe();
	}

	interface Bird extends Animal {
	    void fly();
	}

	class Bat implements Mammal, Bird {
	    public void eat() {
	        System.out.println("Bat is eating.");
	    }

	    public void breathe() {
	        System.out.println("Bat is breathing.");
	    }

	    public void fly() {
	        System.out.println("Bat is flying.");
	    }
	}

	public class DiamondProblem {
	    public static void main(String[] args) {
	        Bat bat = new Bat();
	        bat.eat(); 
	        bat.breathe(); 
	        bat.fly(); 
	    }
	}
