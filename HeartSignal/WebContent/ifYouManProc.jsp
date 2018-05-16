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
	#woman_1:checked + label img{
		content:url('resources/woman_1_chk.png');
	}
	#woman_2:checked + label img{
		content:url('resources/woman_2_chk.png');
	}
	#woman_3:checked + label img{
		content:url('resources/woman_3_chk.png');
	}
	#woman_4:checked + label img{
		content:url('resources/woman_4_chk.png');
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
<img width="60%" src="resources/q2.PNG"><br><br>
<form method="post" action="voteCount2.jsp?TYPE=woman">
<table style="text-align:center; width:410px;" cellpadding="30px">
	<tr>
		<td>
		<input type="radio" name="woman" value="오영주" id="woman_1">
    <label for="woman_1">
    	<figure>
    		<img src="resources/woman_1.png" width="150px" alt="오영주"/>
    		<center><figcaption>오영주</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="송다은" id="woman_2">
    <label for="woman_2">
    	<figure>
    		<img src="resources/woman_2.png" width="150px" alt="송다은"/>
    		<center><figcaption>송다은</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="임현주" id="woman_3">
    <label for="woman_3">
    	<figure>
    		<img src="resources/woman_3.png" width="150px" alt="임현주"/>
    		<center><figcaption>임현주</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="김장미" id="woman_4">
    <label for="woman_4">
    	<figure>
    		<img src="resources/woman_4.png" width="150px" alt="김장미"/>
    		<center><figcaption>김장미</figcaption></center>
    	</figure>
    </label>
		</td></tr><tr><td>
		<input type="submit" name="action" value="투표하고 결과보기"/>
		</td></tr></table></center>
</form>
</body>
</html>