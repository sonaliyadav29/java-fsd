import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseDemo {

    private static final String DB_URL = "jdbc:mysql://localhost/";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Sona@1234";
    private static final String DB_NAME = "mydatabase";

    public static void main(String[] args) {
        createDatabase();
        selectDatabase();
        dropDatabase();
    }

    public static void createDatabase() {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement()) {
            String createDbQuery = "CREATE DATABASE " + DB_NAME;
            statement.executeUpdate(createDbQuery);
            System.out.println("Database created successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void selectDatabase() {
        try (Connection connection = DriverManager.getConnection(DB_URL + DB_NAME, DB_USER, DB_PASSWORD)) {
            System.out.println("Connected to database: " + DB_NAME);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void dropDatabase() {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement()) {
            String dropDbQuery = "DROP DATABASE " + DB_NAME;
            statement.executeUpdate(dropDbQuery);
            System.out.println("Database dropped successfully.");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


