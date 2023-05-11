package practice_project_7;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
        String filename = "sample.txt";
        createFile(filename);
        writeFile(filename);
        readFile(filename);
        updateFile(filename);
        deleteFile(filename);
    }

    private static void createFile(String filename) {
       
    	try {
            File file = new File(filename);
            if (file.createNewFile()) {
                System.out.println("File created: " + file.getName());
            } else {
                System.out.println("File already exists.");
            }
        }
    	
    	catch (IOException e)
    	{
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    
    private static void writeFile(String filename) {
       
    	try
    	{
            FileWriter writer = new FileWriter(filename);
            writer.write("Hello, World!");
            writer.close();
            System.out.println("File written to successfully.");
        }
    	
    	catch (IOException e)
    	{
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    private static void readFile(String filename) {
        try
        {
            File file = new File(filename);
            Scanner scanner = new Scanner(file);
            while (scanner.hasNextLine()) {
                String data = scanner.nextLine();
                System.out.println(data);
            }
            scanner.close();
        } 
        
        catch (IOException e) 
        {
            System.out.println("An error has occurred.");
            e.printStackTrace();
        }
    }

    private static void updateFile(String filename) {
        try 
        {
            FileWriter writer = new FileWriter(filename, true);
            writer.write("\nThis is an update.");
            writer.close();
            System.out.println("File has been updated successfully.");
        } 
        
        catch (IOException e) 
        {
            System.out.println("An error has occurred.");
            e.printStackTrace();
        }
    }

    private static void deleteFile(String filename) {
        File file = new File(filename);
        if (file.delete()) {
            System.out.println("File has been deleted: " + file.getName());
        } 
        else
        {
            System.out.println("Failed to delete the file.");
        }
    }
}
