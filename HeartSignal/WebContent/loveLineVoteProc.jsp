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
		width:100px;
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
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		// radio change 이벤트
		$("input[name=woman]").change(function() {
			var radioValue = $(this).val();
			if (radioValue == "오영주") {
				$("#conn1").attr('src','resources/woman_1_conn.PNG');
			} else if (radioValue == "송다은") {
				$("#conn1").attr('src','resources/woman_2_conn.PNG');
			} else if (radioValue == "임현주") {
				$("#conn1").attr('src','resources/woman_3_conn.PNG');
			} else if (radioValue == "김장미") {
				$("#conn1").attr('src','resources/woman_4_conn.PNG');
			} 
			
			if($("input[name=man]:checked").val()!=null){
				$("#conn2").attr('src','resources/conn_fill.png');
			}
		});
		
		$("input[name=man]").change(function() {
			var radioValue = $(this).val();
			if (radioValue == "김도균") {
				$("#conn3").attr('src','resources/man_1_conn.PNG');
			} else if (radioValue == "정재호") {
				$("#conn3").attr('src','resources/man_2_conn.PNG');
			} else if (radioValue == "이규빈") {
				$("#conn3").attr('src','resources/man_3_conn.PNG');
			} else if (radioValue == "김현우") {
				$("#conn3").attr('src','resources/man_4_conn.PNG');
			} 
			
			if($("input[name=woman]:checked").val()!=null){
				$("#conn2").attr('src','resources/conn_fill.png');
			}
		});
		
	});

</script>
</head>
<body><center>
<br>
<img width="60%" src="resources/q1.png"><br><br><br><br>
<div width=660px>
	<img id="conn1" width="120px" src="resources/woman_conn.PNG">
	<img id="conn2" width="120px" src="resources/conn_emp.png">
	<img id="conn3" width="120px" src="resources/man_conn.PNG">
</div>
<form method="post" action="voteCount.jsp">
<table style="text-align:center; width:660px;" cellpadding="40px">
	<tr>
		<td><p>여자(택1)</p>
		<input type="radio" name="woman" value="오영주" id="woman_1">
    <label for="woman_1">
    	<figure>
    		<img src="resources/woman_1.png" width="100px" alt="오영주"/>
    		<center><figcaption>오영주</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="송다은" id="woman_2">
    <label for="woman_2">
    	<figure>
    		<img src="resources/woman_2.png" width="100px" alt="송다은"/>
    		<center><figcaption>송다은</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="임현주" id="woman_3">
    <label for="woman_3">
    	<figure>
    		<img src="resources/woman_3.png" width="100px" alt="임현주"/>
    		<center><figcaption>임현주</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="woman" value="김장미" id="woman_4">
    <label for="woman_4">
    	<figure>
    		<img src="resources/woman_4.png" width="100px" alt="김장미"/>
    		<center><figcaption>김장미</figcaption></center>
    	</figure>
    </label>
		</td>
		<td><p>남자(택1)</p>
		<input type="radio" name="man" value="김도균" id="man_1">
    <label for="man_1">
    	<figure>
    		<img src="resources/man_1.png" width="100px" alt="김도균"/>
    		<center><figcaption>김도균</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="정재호" id="man_2">
    <label for="man_2">
    	<figure>
    		<img src="resources/man_2.png" width="100px" alt="정재호"/>
    		<center><figcaption>정재호</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="이규빈" id="man_3">
    <label for="man_3">
    	<figure>
    		<img src="resources/man_3.png" width="100px" alt="이규빈"/>
    		<center><figcaption>이규빈</figcaption></center>
    	</figure>
    </label>
    <input type="radio" name="man" value="김현우" id="man_4">
    <label for="man_4">
    	<figure>
    		<img src="resources/man_4.png" width="100px" alt="김현우"/>
    		<center><figcaption>김현우</figcaption></center>
    	</figure>
    </label>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" name="action" value="투표하고 결과보기"/>
		</td>
	</tr>
</table></center>
</form>
</body>
</html>