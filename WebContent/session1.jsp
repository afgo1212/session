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

	int frequency = 0;
	Cookie Cookies[]= request.getCookies();

     if (Cookies == null){
		out.println("您是第一次登入到此網站");  
		Cookie str1 = new Cookie("son", "1"); 
		str1.setMaxAge(60*60*24); 
		response.addCookie(str1); 
	 }
	 else if (Cookies != null){
		for(int i =0; i < Cookies.length; i ++){  //1~3
		Cookie msg = Cookies[i];  //將Cookie放在msg裡
		if(msg.getName().equals("son")){  //判斷取出來的Cookie是否為son
		       frequency = Integer.valueOf(msg.getValue());//回傳參數的整數物件,為了讀取記錄
		       frequency = frequency + 1;//拜訪次數累加
		       out.println("您是第"+frequency+"次拜訪此網站");
	       	   Cookie str1 = new Cookie("son", String.valueOf(frequency)); 
	       	   response.addCookie(str1); //將以改變值得Cookie放進temp在回傳給Cookie
			}
		}	      //最後會回傳直是因為要記錄次數以便下次可以抓的道
	 }
%>

</body>
</html>