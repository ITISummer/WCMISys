<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>世界中医药教育机构查询系统</title>
    <link href="css/login.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" />
    <script type="text/javascript">
        function _hyz() {
            var img = document.getElementById("verifyImg");
            img.src = "${pageContext.request.contextPath }/VerifyCodeServlet?a=" + new Date().getTime() ;
        }
    </script>
</head>
<body>

<div class="header">
    <img alt="logo" src="images/logo_cmei.jpg" height="108" width="650">
</div>

<div class="banner">

    <div class="login-aside">
        <div id="o-box-up"></div>
        <div id="o-box-down"  style="table-layout:fixed;">
            <div class="error-box">
                <font size="3" color="red">${error }</font>
            </div>
            <!--代码pageContext.request.contextPath  的 作用是取出部署的应用程序名，这样不管如何部署，所用路径都是正确的。-->
            <!--action属性规定当提交表单时，向何处发送表单数据-->
            <form action="${pageContext.request.contextPath }/login.do" method="post">
                <div class="fm-item">
                    <label  class="form-label">用户ID：</label>
                    <input type="text" maxlength="100" name="userId" class="i-text" value="${userid }" />
                </div>

                <div class="fm-item">
                    <label  class="form-label">登陆密码：</label>
                    <input type="password" maxlength="100" name="password" class="i-text" value="${password }" />
                </div>

                <div class="fm-item pos-r">
                    <label  class="form-label">验证码</label>
                    <input type="text" placeholder="请输入验证码" name="verifyCode" maxlength="100" id="yzm" class="i-text yzm" />
                    <img src="${pageContext.request.contextPath }/VerifyCodeServlet"  id="verifyImg">
                    <a href="javascript:_hyz()">看不清</a>
                </div>

                <div class="fm-item pos-r" s>
                    <label style="display: inline; margin-left: 20px"  class="form-label">管理员</label>
                    <input type="radio" name="person" value="administrator" checked="checked"/>
                    <label style="display: inline; margin-left: 20px"  class="form-label">老师</label>
                    <input type="radio" name="person" value="teacher" />
                    <label style="display: inline; margin-left: 20px"  class="form-label">机构</label>
                    <input type="radio" name="person" value="student" />
                </div>


                <div class="fm-item">
                    <label  class="form-label"></label>
                    <input type="submit" value="" tabindex="4" id="send-btn" class="btn-login">
                    <div class="ui-form-explain"></div>
                </div>

            </form>

        </div>

        <!-- 背景 -->
    </div>
    <div class="bd">
        <ul>
            <li style="background:url(themes/img_1.png) #CCE1F3 center 0 no-repeat;" height="478" width="1560"></li>
            <li style="background:url(themes/img_2.png) #BCE0FF center 0 no-repeat;" height="478" width="1560"></li>
        </ul>
    </div>

    <div class="hd"><ul></ul></div>
</div>


<div class="banner-shadow"></div>

<div class="footer">
    <p><a target="_blank" href="http://www.pxcoder.com//">...</a></p>
</div>


</body>
</html>