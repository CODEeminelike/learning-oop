// File: TestTiDBConnection.java
import java.sql.*;

public class TestTiDBConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://gateway01.ap-southeast-1.prod.aws.tidbcloud.com:4000/test?sslMode=VERIFY_CA";
        String user = "312eXUdzLENvYVwroot";
        String password = "ULu2fkOr4MPPydtt";
        
        try {
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("✅ Kết nối TiDB Cloud THÀNH CÔNG!");
            conn.close();
        } catch (Exception e) {
            System.out.println("❌ Kết nối TiDB Cloud THẤT BẠI: " + e.getMessage());
            e.printStackTrace();
        }
    }
}