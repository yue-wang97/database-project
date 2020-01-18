package Database;

import java.sql.*;
import java.util.Properties;
import oracle.jdbc.driver.OracleDriver;

public class Database
{
	public static Connection connection() {
        Connection connect = null;
        //Statement statement = null;
        //ResultSet resultSet = null;

        try {
        	//第一步：注册驱动
            Driver driver = new OracleDriver();
            DriverManager.deregisterDriver(driver);

            //第二步：获取连接
            Properties pro = new Properties();
            pro.put("user", "jingfan");
            pro.put("password", "ja3uphk89z97");
            connect = driver.connect("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl", pro);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return connect;
    }
}