package com.order.control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //获取数据库连接
        Connection connection = DatabaseConnection.getConnection();

        //创建登录判断对象
        LoginJudgement loginJudgement = new LoginJudgement(connection);

        //调用合并后的方法，获取用户验证和角色信息
        try {
            UserAuthenticationResult result = loginJudgement.authenticateUser(username,password);

            //进行结果处理
            if (result.isValid()) {
                //获取用户角色
                String role = result.getRole();

                //根据角色跳转到不同页面
                if("DOCTOR".equals(role)) {
                    //跳转到医生页面
                    response.sendRedirect("doctorview/doctorpage.jsp");
                } else if ("ADMIN".equals(role)) {
                    //跳转到管理员界面
                    response.sendRedirect("adminview/adminpage.jsp");
                } else {
                    //其他角色，跳转到错误页面
                    response.sendRedirect("");
                }
            } else {
                //验证失败，跳转返回登录页面并且给出错误提示
                response.sendRedirect("view/login.jsp?error=1");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }




    }
}
