<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.1/jquery.form.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script>
        function changeCheckNum(){
            var checkNumImage_=document.getElementById("checkNumImage");
            checkNumImage_.src="${pageContext.request.contextPath}/verifyCode?timeStamp="+new Date().getTime();
        }
    </script>
</head>
<body onload='document.f.username.focus();'>
<h3>Login with Username and Password</h3>
<form id="loginForm" name='loginForm' action="${pageContext.request.contextPath }/login"
      method='POST'>
    <table>
        <tr>
            <td>User:</td>
            <td><input type='text' name='username' value=''></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type='password' name='password' /></td>
        </tr>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <tr>
            <td><img id="checkNumImage" src="${pageContext.request.contextPath}/verifyCode" height="20" align="left" onClick="changeCheckNum()"
                title="点击换一张" style="cursor:hand"></td>
            <td><input type='text' name='validateCode' value=''></td>
        </tr>
        <tr>
            <td colspan='2'><input onclick="loginClick()" name="submit" type="button"
                                   value="Login" /></td>
        </tr>
    </table>
</form>
<form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="Logout" />
    <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>

<form id="word2htmlForm" action="${pageContext.request.contextPath}/word2html?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
    <input type="file" name="file" />
    <%--<input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>--%>
    <input type="submit" name="submit" value="提交">
</form>
<br/><br/>
<form id="suggestInfoForm" action="${pageContext.request.contextPath}/suggestInfo/Submit?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
    <input type="file" name="files"  multiple="multiple"/><br/>
    Function ID:<input type="text" name="functionId"><br/>
    SuggestInfo:<input type="text" name="suggestInfo"><br/>
    <%--<input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>--%>
    <input type="submit" name="submit" value="提交">
</form>

<br/><br/>
<form id="testForm" action="${pageContext.request.contextPath}/suggestInfo/uploadTest?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
    <input type="file" name="files"  multiple="multiple"/><br/>
    <input type="submit" name="submit" value="提交">
</form>
<script>
    function loginClick() {
        $("#loginForm").ajaxSubmit({
            dataType: "json",
            success: function(data){
                alert(data);
            }
        });
    }
</script>

</body>
</html>