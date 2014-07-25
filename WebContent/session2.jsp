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
	//request.getSession().setAttribute("aaaa", "");		
		
		if(request.getSession().getAttribute("aaaa") != null){
		int i = Integer.valueOf(request.getSession().getAttribute("aaaa").toString()).intValue();
		i = i+1;
		out.print("第" + i + "次瀏覽");
		request.getSession().setAttribute("aaaa", i);	
		}
		else{
			out.print("第一次瀏覽");
			request.getSession().setAttribute("aaaa", "1");
			
		}
		
	//happy
		
%>
</body>
</html>