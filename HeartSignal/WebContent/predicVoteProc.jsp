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
	#predic_1:checked + label img{
		content:url('resources/prediction_1_chk.png');
	}
	#predic_2:checked + label img{
		content:url('resources/prediction_2_chk.png');
	}
	#predic_3:checked + label img{
		content:url('resources/prediction_3_chk.png');
	}
	#predic_4:checked + label img{
		content:url('resources/prediction_4_chk.png');
	}
	#predic_5:checked + label img{
		content:url('resources/prediction_5_chk.png');
	}
	#predic_6:checked + label img{
		content:url('resources/prediction_6_chk.png');
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
<img width="50%" src="resources/q4.PNG"><br><br>
<form method="post" action="voteCount2.jsp?TYPE=predic">
<table style="text-align:center; width:600px;" cellpadding="30px">
	<tr>
		<td>
		<input type="radio" name="predic" value="윤종신" id="predic_1">
    <label for="predic_1">
    	<figure>
    		<img src="resources/prediction_1.PNG" width="150px" alt="윤종신"/>
    		<center><figcaption>윤종신</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="predic" value="이상민" id="predic_2">
    <label for="predic_2">
    	<figure>
    		<img src="resources/prediction_2.PNG" width="150px" alt="이상민"/>
    		<center><figcaption>이상민</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="predic" value="김이나" id="predic_3">
    <label for="predic_3">
    	<figure>
    		<img src="resources/prediction_3.PNG" width="150px" alt="김이나"/>
    		<center><figcaption>김이나</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="predic" value="양재웅" id="predic_4">
    <label for="predic_4">
    	<figure>
    		<img src="resources/prediction_4.PNG" width="150px" alt="양재웅"/>
    		<center><figcaption>양재웅</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="predic" value="소유" id="predic_5">
    <label for="predic_5">
    	<figure>
    		<img src="resources/prediction_5.PNG" width="150px" alt="소유"/>
    		<center><figcaption>소유</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="predic" value="원" id="predic_6">
    <label for="predic_6">
    	<figure>
    		<img src="resources/prediction_6.PNG" width="150px" alt="원"/>
    		<center><figcaption>원</figcaption></center>
    	</figure>
    </label>
		</td></tr><tr><td>
		<input type="submit" name="action" value="투표하고 결과보기"/>
		</td></tr></table></center>
</form>
</body>
</html>