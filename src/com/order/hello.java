package com.order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "1", value = "/hello")
public class hello extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         //设置响应内容类型
        response.setContentType("text/html");

        // 实际的内容
        java.io.PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Hello Servlet</title></head>");
        out.println("<body>");
        out.println("<h1>Hello</h1>");
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 设置响应内容类型
//        response.setContentType("text/html");
//
//        // 实际的内容
//        java.io.PrintWriter out = response.getWriter();
//        out.println("<html>");
//        out.println("<head><title>Hello Servlet</title></head>");
//        out.println("<body>");
//        out.println("<h1>Hello</h1>");
//        out.println("</body></html>");
    }
}
