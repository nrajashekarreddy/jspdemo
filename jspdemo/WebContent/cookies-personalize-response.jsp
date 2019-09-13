<html>
<head>
<title>confirmation:</title>
<%
//read form data 
String favLang=request.getParameter("myfavouritelanguage");
//create the cookie
Cookie thecookie=new Cookie("myapp.favouritelanguage",favLang);

//set lifespan total numberof time
thecookie.setMaxAge(60*60*24*365);
//send cookie to browser
response.addCookie(thecookie);

%>

</head>
<body>
thanks! we set your favourite languags to: ${param.favouritelanguage}
<br/><br/>
<a href="cookies-homepage.jsp"> return to home page</a>

</body>
</html>
