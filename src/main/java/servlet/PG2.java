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
import java.sql.ResultSet;
import java.sql.Statement;

import static servlet.PG.connectionPool;


@WebServlet(name = "PG2", urlPatterns = "/PG2")
public class PG2 extends HttpServlet {



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //String url = System.getenv("JDBC_DATABASE_URL");
        //String url = System.getenv("PATH");
        //System.out.println(url);

        try {

            Connection connection = connectionPool.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM breadcrumb");

            while (resultSet.next()) {

                response.getWriter().println(resultSet.getString("name"));
                //System.out.println(resultSet.getString("name"));
            }

            //Connection connection = DriverManager.getConnection(dbUrl, username, password);
            //Connection connection = DriverManager.getConnection(url, "postgres", "CJ6vul42k6");
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
