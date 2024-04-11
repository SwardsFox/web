package com.order.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    //JDBC连接代码
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/users?serverTimezone=GMT%2B8";

    //数据库凭证
    static final String USER = "root";
    static final String PASS = "@Admin123";

    //数据库连接
    private static Connection connection = null;

    //获取数据库连接
    public static Connection getConnection(){
        try {
            //注册JDBC驱动
            Class.forName(JDBC_DRIVER);
            //打开连接
            connection = DriverManager.getConnection(DB_URL,USER,PASS);
        } catch (ClassNotFoundException  |SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    //关闭数据库连接
    public static void closeConnection(){
        if(connection != null) {
            try {
                connection.close();
            }catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
