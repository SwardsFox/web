<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2024/4/9
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>城市医院预约平台</title>
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="css/ui.css">
</head>
<body>
<!-- 顶部 -->
<div class="top" id="top">
    <div class="wrap">
        <p class="call">010-114/114514电话预约</p>
        <p class="welcome">欢迎来到城市医院预约挂号统一平台&nbsp;请&nbsp;
            <a href="view/login.jsp">登录</a>
            <a href="#">注册</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#">帮助中心</a>
        </p>
    </div>
</div>
<!-- 导航栏 -->
<div class="nav" id="nav">
    <div class="wrap">
        <div class="menu" ><a href="#" class="link">首页</a></div>
        <a href="#" class="link">按医院挂号</a>
        <a href="#" class="link">按科室挂号</a>
        <a href="#" class="link">按疾病挂号</a>
        <a href="#" class="link">最新公告</a>
        <a href="#" class="link right">社会知名医院</a>
    </div>
</div>
<!-- 医院简绍区域 -->
<div class="banner" id="banner">
    <div class="wrap">
        <div class="title">
            <span class="title-left">丰饶医院 <a href="#">关注医院</a></span>
            <span class="title-right">
            <span class="title-right-tips">等级:</span>超级级甲等 &nbsp;&nbsp;
            <span class="title-right-tips">区域:</span>仙舟 &nbsp;&nbsp;
            <span class="title-right-tips">分类:</span>崩坏星穹铁道医院 &nbsp;&nbsp;
          </span>
        </div>
        <div class="banner-content">
            <div class="left">
                <img src="" alt="">
            </div>
            <div class="middle">
                <span class="icon-address">[东院]星槎海中枢不夜侯114号</span>
                <span class="icon-web">http:127.0.0.1</span>
                <span class="icon-tel">东院咨询台：18350114077</span>
                <span class="icon-trans">东院：106，108，110，116，684，685到星槎海；
              41，104快，814到星槎海</span>
            </div>
            <div class="right">
                <img src="" alt="">
            </div>
        </div>

    </div>
</div>
<!-- 医院体系区域 -->
<div class="content " id="content" >
    <div class="wrap">
        <!-- 导航栏 -->
        <div class="nav">
            <a href="#2" class="link selected">预约挂号</a>
            <a href="#2" class="link">医院介绍</a>
            <a href="#2" class="link">预约须知</a>
            <a href="#2" class="link">停诊信息</a>
            <a href="#2" class="link">查询取消</a>
        </div>
        <div class="schedule hidden" >
            <span>科室排班表</span>
            <span class="back"><a href="#">返回科室列表</a></span>
        </div>
    </div>
</div>



<div class="content-lists clearfix">
    <div class="wrap clearfix">
        <div class="content-list focus">
            <div class="content-tab">
                <div class="caption">开放预约科室</div>
                <div class="content-table">
                    <table>

                    </table>
                </div>
            </div>
            <div class="content-news">
                <div class="caption">
                    预约规则
                    <span>更新时间每日8：30更新</span>
                </div>
                <div class="content-news-tips">
                    <div class="line">
                        <div class="line-name">预约周期:</div><div>7天</div>
                    </div>
                    <div class="line">
                        <div class="line-name">放号时间:</div><div>8：30</div>
                    </div>
                    <div class="line">
                        <div class="line-name">停诊时间:</div>
                        <div>下午14：00停止次日预约挂号，周五14：00停挂至下周一</div>
                    </div>
                    <div class="line">
                        <div class="line-name">退号时间:</div>
                        <div>就诊前一工作日14：00前取消</div>
                    </div>
                    <div class="line">
                        <div class="line-name">特殊规则:</div>
                        <div>取号地点不同：西院区预约号区号地点：
                            西院区门诊楼一层大厅挂号窗口取号。东院区预约号取号地点：东
                            院区老门诊楼一层大厅挂号窗口或新门诊楼各楼层挂号/收费窗口取号。</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-list">
            <!-- 医院介绍 -->
            <div class="hospital-intro">

            </div>
        </div>
        <div class="content-list">
            <!-- 预约须知 -->

        </div>
        <div class="content-list">
            <!-- 停诊信息 -->
            <div class="stop-title">
                停诊信息
            </div>
            <table class="stop-tips-table">
                <tr>
                    <th>日期</th>
                    <th>星期</th>
                    <th>时段</th>
                    <th>科室</th>
                    <th>特长</th>
                    <th>职称</th>
                    <th>挂号费</th>
                    <th>可挂号数</th>
                    <th>剩余好数</th>
                    <th>替换方式</th>
                </tr>

            </table>
        </div>
        <div class="content-list">
            <!-- 查询取消 -->
            <div class="search-cancel">
                <div class="line">
                    <span>预约识别码:</span>
                    <input type="text" name="" value="">
                    <button type="button" name="" value="">查询订单</button>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap clearfix hidden">
        <table>
            <tr>
                <td>
                    <div class="leftBtn">
                        <div class="wrap_btn">
                            <div class="btn"></div>
                        </div>
                        <div class="status">上午</div>
                        <div class="status">下午</div>
                        <div class="status">晚上</div>
                    </div>
                </td>
                <td>
                    <div class="main">
                        <div class="schedule_box clearfix">
                            <!-- 模板
                            <div class="schedule_box_item">
                              <div class="date">星期一 <br>2019-01-01</div>
                              <div class="status"></div>
                              <div class="status status_full">约满</div>
                              <div class="status"></div>
                            </div>
                          -->
                        </div>
                    </div>
                </td>
                <td>
                    <div class="rightBtn">
                        <div class="wrap_btn">
                            <div class="btn"></div>
                        </div>
                        <div class="status"></div>
                        <div class="status"></div>
                        <div class="status"></div>
                    </div>
                </td>
                <td>
                    <div class="content-news">
                        <div class="title">
                            预约规则
                        </div>
                        <div class="line">
                            <div class="line-name">预约周期:</div><div>7天</div>
                        </div>
                        <div class="line">
                            <div class="line-name">放号时间:</div><div>8：30</div>
                        </div>
                        <div class="line">
                            <div class="line-name">停诊时间:</div>
                            <div>下午14：00停止次日预约挂号，周五14：00停挂至下周一</div>
                        </div>
                        <div class="line">
                            <div class="line-name">退号时间:</div>
                            <div>就诊前一工作日14：00前取消</div>
                        </div>
                        <div class="line">
                            <div class="line-name">特殊规则:</div>
                            <div>取号地点不同：西院区预约号区号地点：
                                西院区门诊楼一层大厅挂号窗口取号。东院区预约号取号地点：东
                                院区老门诊楼一层大厅挂号窗口或新门诊楼各楼层挂号/收费窗口取号。</div>
                        </div>
                    </div>
                </td>
            </tr>
            <tr >
                <td colspan="4">
                    <div class="bottom">
                        <span class="choice">您还没有选择就诊日期</span>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
</div>



<!-- footer -->
<div class="footer" id="footer">
    Copyright (c) 2018 Copyright Holder All Rights Reserved.
</div>
</body>


</html>
