<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#progress{
		width:1000px;
		background-color:#ffffff;
		display:inline-block;
	}
	#progress_{
		height:50px;
		float:left;
	}
</style>
</head>
<body>
	<%
		class Choice implements Comparable<Choice>{
			int cnt;
			int rank=1;
			String name;
			String color;
			
			Choice(int cnt, String name,String color){
				this.cnt=cnt;
				this.name=name;
				this.color=color;
			}
			
			public int compareTo(Choice c){
				
				if(this.cnt<c.cnt){
					return 1;
				}else if(this.cnt>c.cnt){
					return -1;
				}
				else{
					return 0;
				}
				
			}
		}
	
		ArrayList<Choice> cc = new ArrayList<Choice>();
		
		request.setCharacterEncoding("UTF-8");
		String type=request.getParameter("TYPE");
		
		String[] vote=new String[0];
		String[] color={"#e8a1f7","#f7a1a1","#f9e588","#bdd0ff","#c0c0c0","#abdca3"};
		String qType="";
		
		switch(type){
		case "woman": 
			String[] woman= {"오영주","송다은","임현주","김장미"};
			vote=woman;
			qType="resources/q2.PNG";
			break;
		case "man": 
			String[] man= {"김현우","정재호","이규빈","김도균"};
			vote=man;
			qType="resources/q3.PNG";
			break;
		case "predic":
			String[] pre={"소유","김이나","양재웅","원","윤종신","이상민"};
			vote=pre;
			qType="resources/q4.PNG";
			break;
		}
		
		double sum=0.0;

		try{
			for(int i=0;i<vote.length;i++){
				String filePath = application.getRealPath("/WEB-INF/vote2/"+vote[i]+".txt");
				BufferedReader reader=new BufferedReader(new FileReader(filePath));
				
				String str="";
				int cnt=0;
				while(true){
					str=reader.readLine();
					//str.replaceAcc(regex, replacement);
					if(str==null||str.equals("")) break;
					cnt=Integer.parseInt(str.trim());
				}
				cc.add(new Choice(--cnt, vote[i], color[i]));
				sum+=cnt;
				reader.close();
			}
		}catch(Exception e){
			out.println(e.toString());
		}
		
		Collections.sort(cc);
		
		%><center>
		<img width="60%" src="<%=qType%>"><br><br><br><br>
		<div id="progress"><%
			for(int i=0;i<cc.size();i++){%>
				<div id="progress_" style="width:<%=(int)(100*(cc.get(i).cnt/sum)) %>%;background-color:<%=cc.get(i).color%>;display:inline-block;"></div>
			<%}
		%>
		</div>
		<div style="width:1000px"><%
			for(int i=0;i<cc.size();i++){
			if(cc.get(i).cnt==0) continue;%>
				<div style="width:<%=(int)(100*(cc.get(i).cnt/sum)) %>%;display:inline-block;float:left">
					<img src="resources/<%= cc.get(i).name%>.png" width="100px">
				</div>
			<%}
		%></div>
		<div style="width:1000px"><%
			for(int i=0;i<cc.size();i++){
				if(cc.get(i).cnt==0) continue;
				%>
				<div style="width:<%=(int)(100*(cc.get(i).cnt/sum)) %>%;display:block-inline;float:left;font-size:0.7em;">
					<%out.println("<span style='font-weight:bold'>"+cc.get(i).name+"</span> "+cc.get(i).cnt+"표 / 총 "+(int)sum+"표 ("+String.format("%.2f",100*(cc.get(i).cnt/sum))+"%)<br><br><br><br>");
				%></div>
			<%}
		%></div></center>
</body>
</html>