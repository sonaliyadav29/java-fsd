import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecommerce.DBConnection;

public class ProductDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the form parameters
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));

        // Initialize database resources
        Connection conn = null;
        CallableStatement stmt = null;

        try {
            // Get the database connection from the DBConnection class
            conn = DBConnection.getConnection();

            // Prepare the stored procedure call
            String sql = "{CALL add_product(?, ?, ?)}";
            stmt = conn.prepareCall(sql);
            stmt.setString(1, name);
            stmt.setString(2, description);
            stmt.setDouble(3, price);

            // Execute the stored procedure
            stmt.executeUpdate();

            // Redirect to a success page
            response.sendRedirect("success.html");
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle database errors and redirect to an error page
            response.sendRedirect("error.html");
        } finally {
            // Close the database resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}


