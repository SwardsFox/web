package com.order.control;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginJudgement {
    private final Connection connection;

    // 构造方法，接收数据库连接对象
    public LoginJudgement(Connection connection) {
        this.connection = connection;
    }

    //判断用户是否有效的方法
    public boolean isValidUser(String username,String password) {
        boolean isValid = false;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            String query = "SELECT * FROM doctor WHERE Username=? AND Password=?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return isValid;
    }

    //全新的方法同时判断用户的有效性和获取角色方法
    public UserAuthenticationResult authenticateUser(String username, String password) throws SQLException {
        UserAuthenticationResult result = new UserAuthenticationResult();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            //进行查询对应的账户角色
            String query = "SELECT Role FROM doctor WHERE Username = ? AND Password = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();

            //如果查询到结果，说明用户有效，获取用户角色
            if(resultSet.next()){
                result.setValid(true);
                String role = resultSet.getString("Role");
                result.setRole(role);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            // 关闭资源
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return result;
    }
}
