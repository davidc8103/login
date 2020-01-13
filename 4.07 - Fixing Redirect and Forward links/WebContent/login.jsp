<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
</head>
<body>
<form action="<%= request.getContextPath()%>/SiteController" method="post">
Username: <input type="text" name="username"><br/>
Password: <input type="password" name="password"><br/>
<input type="hidden" name="action" value="loginSubmit">
<input type="submit" value="submit">
</form>
</body>
</html>
