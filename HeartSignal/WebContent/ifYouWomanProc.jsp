<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	[type='radio']{
		display: none;
	}
	figure{
		float:left;
		width:150px;
		text-align:center;
		margin:10px;
	}
	figcaption{
		font-size:0.7em;
	}
	#man_1:checked + label img{
		content:url('resources/man_1_chk.png');
	}
	#man_2:checked + label img{
		content:url('resources/man_2_chk.png');
	}
	#man_3:checked + label img{
		content:url('resources/man_3_chk.png');
	}
	#man_4:checked + label img{
		content:url('resources/man_4_chk.png');
	}
	input[type='submit']{
		width:150px;
		height:30px;
		border:0px;
		background-color:#393164;
		color:white;
	}
</style>
</head>
<body><center>
<br>
<img width="60%" src="resources/q3.PNG"><br><br>
<form method="post" action="voteCount2.jsp?TYPE=man">
<table style="text-align:center; width:410px;" cellpadding="30px">
	<tr>
		<td>
		<input type="radio" name="man" value="김도균" id="man_1">
    <label for="man_1">
    	<figure>
    		<img src="resources/man_1.png" width="150px" alt="김도균"/>
    		<center><figcaption>김도균</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="정재호" id="man_2">
    <label for="man_2">
    	<figure>
    		<img src="resources/man_2.png" width="150px" alt="정재호"/>
    		<center><figcaption>정재호</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="이규빈" id="man_3">
    <label for="man_3">
    	<figure>
    		<img src="resources/man_3.png" width="150px" alt="이규빈"/>
    		<center><figcaption>이규빈</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="김현우" id="man_4">
    <label for="man_4">
    	<figure>
    		<img src="resources/man_4.png" width="150px" alt="김현우"/>
    		<center><figcaption>김현우</figcaption></center>
    	</figure>
    </label>
		</td></tr><tr><td>
		<input type="submit" name="action" value="투표하고 결과보기"/>
		</td></tr></table></center>
</form>
</body>
</html>