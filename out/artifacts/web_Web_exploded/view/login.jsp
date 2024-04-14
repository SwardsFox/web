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
    <title>医生后台管理登录</title>
    <link href="../css/login.css" rel="styleSheet">
    <style>
        .error-message {
            position: fixed;
            top: 50px; /* 距离顶部的距离 */
            left: 50%;
            transform: translateX(-50%); /* 水平居中 */
            background-color: #0a4aec; /* 红色背景 */
            color: #fff; /* 白色文字 */
            padding: 10px 20px; /* 内边距 */
            border-radius: 5px; /* 圆角边框 */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* 阴影效果 */
            z-index: 9999; /* 确保位于最顶层 */
        }

        /* 提示信息样式 */
        .error-message .error-message-heading {
            margin: 0; /* 去除标题的上下间距 */
            font-size: 16px; /* 字体大小 */
            font-weight: bold; /* 字体加粗 */
        }

    </style>
</head>
<body>

<section>

    <%
        // 检查是否有错误消息
        String errorMessage = request.getParameter("error");
        if (errorMessage != null && !errorMessage.isEmpty()) {
            // 显示错误消息
    %>
    <div class="error-message">
        <div class="error-message-heading">密码错误</div>
    </div>
    <%
        }
    %>

    <div class="box">
        <!-- 登录框 -->
        <div class="container">
            <div class="form">
                <h2>登录</h2>
                <form method="post" action="../LoginServlet">
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
                    <p class="forget">没有账户?<a href="./register.jsp">
                        注册
                    </a></p>
                </form>
            </div>
        </div>
    </div>
</section>

</body>
</html>
