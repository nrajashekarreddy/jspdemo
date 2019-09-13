<%@ page import="java.util.*" %>
<html>
<body>
<!--  create html form first -->

<form action="todo-demo.jsp">
Add new item: <input type="text" name="theitem"/>

<input type="submit" value="submit"/>

</form>

<br>

<!-- add data todo list session -->

Item entered: <%= request.getParameter("theitem") %>

<%
//get todo itemos from session

List<String> items=(List<String>) session.getAttribute("myToDoList");




//if items doesn't exist in todo list add items to todo list
if(items==null)
{
	items=new ArrayList<String>();
	session.setAttribute("myToDoList", items);
	}


//see if there form data to add
String theitem=request.getParameter("theitem");
if(theitem!=null)
{
	items.add(theitem);
	}

 %>
 <!--display all the data   -->
 <hr>
 <b>List of items </b>
 <br/>
 
 <ol>
 <% 
 for(String temp:items)
 {
	 out.println("<li>" +temp+ "</li>");
 }
	 %>
	 
 </ol>
 
 </body>
</html>
