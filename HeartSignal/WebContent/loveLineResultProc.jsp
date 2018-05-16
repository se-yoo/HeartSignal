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
		width:200px;
		background-color:#ffee9c;
		display:inline-block;
		margin:10px;
	}
	#progress_{
		height:20px;
		background-color:#ee5a53;
	}
</style>
</head>
<body>
	<%
		class LoveLine implements Comparable<LoveLine>{
			int cnt;
			int rank=1;
			String name;
			
			LoveLine(int cnt, String name){
				this.cnt=cnt;
				this.name=name;
			}
			
			public int compareTo(LoveLine l){
				
				if(this.cnt<l.cnt){
					return 1;
				}else if(this.cnt>l.cnt){
					return -1;
				}
				else{
					return 0;
				}
				
			}
		}
	
		ArrayList<LoveLine> ll = new ArrayList<LoveLine>();
		
		String[] woman={"오영주","송다은","임현주","김장미"};
		String[] man={"김도균","정재호","이규빈","김현우"};
		
		double sum=0.0;

		try{
			for(int i=0;i<4;i++){
				for(int j=0;j<4;j++){
					String name=woman[i]+man[j];
					String filePath = application.getRealPath("/WEB-INF/vote1/"+name+".txt");
					BufferedReader reader=new BufferedReader(new FileReader(filePath));
					
					String str="";
					int cnt=0;
					while(true){
						str=reader.readLine();
						//str.replaceAll(regex, replacement);
						if(str==null||str.equals("")) break;
						cnt=Integer.parseInt(str.trim());
					}
					ll.add(new LoveLine(--cnt, woman[i]+" "+man[j]));
					sum+=cnt;
					reader.close();
				}
			}
		}catch(Exception e){
			out.println(e.toString());
		}
		
		Collections.sort(ll);

		String first_w="";
		String first_m="";
		
		if(ll.get(0).name.contains("오영주"))first_w="woman_1_conn.PNG";
		else if(ll.get(0).name.contains("송다은"))first_w="woman_2_conn.PNG";
		else if(ll.get(0).name.contains("임현주"))first_w="woman_3_conn.PNG";
		else if(ll.get(0).name.contains("김장미"))first_w="woman_4_conn.PNG";
		
		if(ll.get(0).name.contains("김도균"))	first_m="man_1_conn.PNG";
		else if(ll.get(0).name.contains("정재호"))first_m="man_2_conn.PNG";
		else if(ll.get(0).name.contains("이규빈"))first_m="man_3_conn.PNG";
		else if(ll.get(0).name.contains("김현우"))first_m="man_4_conn.PNG";
		
		%>
		<img width="60%" src="resources/q1.png"><br><br><br><br>
		<img src="resources/<%=first_w%>" width=130px>
		<img src="resources/conn_fill.png" width=130px>
		<img src="resources/<%=first_m %>" width=130px>
		<h3><%=ll.get(0).rank %>위</h3><%= ll.get(0).name.replace(" ", "♥")%><br>
		<div id="progress" style="width:300px;">
			<div id="progress_" style="width:<%=(int)(100*(ll.get(0).cnt/sum)) %>%; height:30px"></div>
		</div><br>
		<%=ll.get(0).cnt %>표 / 총 <%= (int)sum%>표 (<%= String.format("%.2f",100*(ll.get(0).cnt/sum))%>%)<br><br><br><br>
		<center><table cellpadding="40px" style="text-align:center">
		<%
		String pic="";
		for(int i=1;i<ll.size();i+=2){
			out.println("<tr><td>");
			if(ll.get(i).name.contains("오영주"))	pic="woman_1.png";
			else if(ll.get(i).name.contains("송다은"))pic="woman_2.png";
			else if(ll.get(i).name.contains("임현주"))pic="woman_3.png";
			else if(ll.get(i).name.contains("김장미"))pic="woman_4.png";
			
			out.println("<img width=100px src='resources/"+pic+"'>");
			
			if(ll.get(i).name.contains("김도균"))	pic="man_1.png";
			else if(ll.get(i).name.contains("정재호"))pic="man_2.png";
			else if(ll.get(i).name.contains("이규빈"))pic="man_3.png";
			else if(ll.get(i).name.contains("김현우"))pic="man_4.png";
			
			out.println("<img width=100px src='resources/"+pic+"'>");
			
			if(ll.get(i).cnt==ll.get(i-1).cnt)ll.get(i).rank=ll.get(i-1).rank;
			else ll.get(i).rank=i+1;
				
			out.println("<h4>"+ll.get(i).rank+"위</h4>"+ll.get(i).name.replace(" ", "♥")+"<br>");%>
			<div id="progress">
				<div id="progress_" style="width:<%=(int)(100*(ll.get(i).cnt/sum)) %>%;"></div>
			</div><br>
			<%
			out.println(ll.get(i).cnt+"표 / 총 "+(int)sum+"표 ("+String.format("%.2f",100*(ll.get(i).cnt/sum))+"%)<br><br><br><br>");
			out.println("</td><td>");
			
			if(i==ll.size()-1)break;
			
			if(ll.get(i+1).name.contains("오영주"))pic="woman_1.png";
			else if(ll.get(i+1).name.contains("송다은"))pic="woman_2.png";
			else if(ll.get(i+1).name.contains("임현주"))pic="woman_3.png";
			else if(ll.get(i+1).name.contains("김장미"))pic="woman_4.png";
			
			out.println("<img width=100px src='resources/"+pic+"'>");
			
			if(ll.get(i+1).name.contains("김도균"))	pic="man_1.png";
			else if(ll.get(i+1).name.contains("정재호"))pic="man_2.png";
			else if(ll.get(i+1).name.contains("이규빈"))pic="man_3.png";
			else if(ll.get(i+1).name.contains("김현우"))pic="man_4.png";
			
			out.println("<img width=100px src='resources/"+pic+"'>");
			
			if(ll.get(i+1).cnt==ll.get(i).cnt)ll.get(i+1).rank=ll.get(i).rank;
			else ll.get(i+1).rank=i+2;
			
			out.println("<h4>"+ll.get(i+1).rank+"위</h4>"+ll.get(i+1).name.replace(" ", "♥")+"<br>");%>
			<div id="progress">
				<div id="progress_" style="width:<%=(int)(100*(ll.get(i+1).cnt/sum)) %>%;"></div>
			</div><br>
			<%
			out.println(ll.get(i+1).cnt+"표 / 총 "+(int)sum+"표 ("+String.format("%.2f",100*(ll.get(i+1).cnt/sum))+"%)<br><br><br><br>");
			out.println("</td></tr>");
		}
	%>
		</table></center>
</body>
</html>