import java.sql.Connection;
import java.sql.SQLException;


public class dbMain {
public static void main(String[] args) throws ClassNotFoundException, SQLException {
	Connection con=dbUtil.getConn();
	if(con==null) {
		System.out.println("connection failed");
	}
	else {
		System.out.println("connection is successfully established ....!!!");
	}
}
}

