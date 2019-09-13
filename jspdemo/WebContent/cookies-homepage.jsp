<html>

<body>

<h3>training</h3>
<!-- read the favourite programming in cookie -->
<% 
//default if there are no cookies
String favLang="Java";

//get the cookies from the browser request
Cookie[] thecookies=request.getCookies();

//find the favourite language cookie

if (theCookies!=null)
{
	for(Cookie tempCookie: cookies ){
		if("myapp.favlanguages".equals(tempCookie.getName()))
		{
			favLang=tempCookie.getValue();
			break;
		}
		
	}
		
	}



%>
</body>

</html>