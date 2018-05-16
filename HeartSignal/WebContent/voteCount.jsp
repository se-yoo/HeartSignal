<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String woman=request.getParameter("woman");
		String man=request.getParameter("man");
		
		String url="loveLineResult.jsp";
		
		if(woman==null||man==null){
			out.println("<script>alert('선택해주세요');</script>");
			url="loveLineVote.jsp";
		}
		else{
		String str="";
		int cnt=0;
		
		BufferedReader reader=null;

		try{
			String filePath = application.getRealPath("/WEB-INF/vote1/"+woman+man+".txt");
			reader=new BufferedReader(new FileReader(filePath));
			
			while(true){
				str=reader.readLine();
				if(str==null||str.equals("")) break;
				cnt=Integer.parseInt(str);
			}
			
		}catch(Exception e){
			System.out.println(e.toString());
		}
		
		PrintWriter writer=null;
		
		try{
			String filePath = application.getRealPath("/WEB-INF/vote1/"+woman+man+".txt");
			writer=new PrintWriter(filePath);
			BufferedWriter bw=new BufferedWriter(writer);
			
			bw.write(Integer.toString(++cnt));			
			bw.close();
			writer.flush();
			
		}catch(Exception e){
			out.println("오류 발생");
		}
		}
		
	%>
	<meta http-equiv='refresh' content='0; url=<%=url %>'>
</body>
</html>