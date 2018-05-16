<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하트시그널</title>
<style>
	@font-face{
		font-family:OmniGothic;
		src:url('210+OmniGothic+030.ttf') format('truetype');
	}
	body{
		font-family:OmniGothic,'NanumGothic';
		width:100%;
		margin:0px;
		color:#A6A6A6;
	}
	#table{
		height:1300px;
		border:0px;
		width:100%;
	}
</style>
</head>
<body>
<%
	String contentpage=request.getParameter("CONTENTPAGE");
%>
<table id="table" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td style="text-align:left;">
		<a href="main.jsp"><img src="resources/main.jpg" width="100%"></a>
	</td>
</tr>
<tr height="70px" style="text-align:center;"><td>
		<jsp:include page="menu.jsp"></jsp:include>
	</td></tr>
<tr height="70%" style="vertical-align:top; text-align:center;">
	<td style="padding-top:30px">
		<jsp:include page="<%= contentpage %>"></jsp:include>
	</td>
</tr>
<tr height="10%">
	<td colspan="2" style="text-align:center;">
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>
</table>
</body>
</html>