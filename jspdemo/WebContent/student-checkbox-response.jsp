<html>
<body>
the student is confirmed: ${param.firstname} ${param.secondname }
<br/><br/>
<!--displaying for favourite languages-->
<% 
String[] langs = request.getParameterValues("favouriteLanguage");
		for(String tempLang : langs)
		{
			out.println("<li>"+tempLang+"</li>");
		}
		
%>
</body>
</html>