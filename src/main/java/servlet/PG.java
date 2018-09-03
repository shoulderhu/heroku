package servlet;

import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URI;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "PG", urlPatterns = "/PG")
public class PG extends HttpServlet {

    public static BasicDataSource connectionPool;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //String url = System.getenv("JDBC_DATABASE_URL");
        //String url = System.getenv("PATH");
        //System.out.println(url);

        try {
            String uri = System.getenv("DATABASE_URL");
            System.out.println(uri);
            URI dbUri = new URI(uri);
            String username = dbUri.getUserInfo().split(":")[0];
            String password = dbUri.getUserInfo().split(":")[1];

            String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
            System.out.println(dbUrl);

            connectionPool = new BasicDataSource();

            if(dbUri.getUserInfo() != null) {

                connectionPool.setUsername(username);
                connectionPool.setPassword(password);
            }

            connectionPool.setDriverClassName("org.postgresql.Driver");
            connectionPool.setUrl(dbUrl);
            connectionPool.setInitialSize(2);

            //Connection connection = DriverManager.getConnection(dbUrl, username, "");
            //Connection connection = DriverManager.getConnection(url, "postgres", "postgres");
            /*
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM breadcrumb");

            while (resultSet.next()) {

                System.out.println(resultSet.getString("name"));
            }
            */
        }
        catch (Exception e) {

            e.printStackTrace();
        }

    }
}
