<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Member Area</title>
</head>
<body>
	<%
		String username=null, sessionID=null;
		if(request.getSession().getAttribute("username") == null){
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		} else {
			username = request.getSession().getAttribute("username").toString();
			sessionID = request.getSession().getId();
		}
	%>
	Username: <%=username%><br/>
	Session ID: <%=sessionID %><br/>
	Members Area
	
	<form action="<%=request.getContextPath()%>/MemberAreaController" method="get">
		<input type="hidden" name="action" value="destroy">
		<input type="submit" value="Logout">
	</form>

</body>
</html>
