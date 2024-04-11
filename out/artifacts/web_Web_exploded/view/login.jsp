<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2024/3/19
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/login.css" rel="styleSheet">
</head>
<body>
<%
    // 检查是否有消息参数
    String message = request.getParameter("message");
    if (message != null && !message.isEmpty()) {
        // 显示消息
        out.print("<div class=\"box\" ><h2>" + message + "</h2></div>");
    }
%>

<section>
    <div class="box">
        <!-- 登录框 -->
        <div class="container">
            <div class="form">
                <h2>登录</h2>
                <form method="post" action="../L">
                    <div class="inputBox">
                        <input type="text" placeholder="姓名" id="user" name="username">

                    </div>
                    <div class="inputBox">
                        <input type="password" placeholder="密码" id="upwd" name="password">

                    </div>
                    <div class="inputBox">
                        <input type="submit" value="登录" >

                    </div>
                    <p class="forget">忘记密码?<a href="#">
                        点击这里
                    </a></p>
                    <p class="forget">没有账户?<a href="./register/register.jsp">
                        注册
                    </a></p>
                </form>
            </div>
        </div>
    </div>
</section>

</body>
</html>
