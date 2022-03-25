<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
   </head>
 
   <body>
   
      <!-- XML comment -->  <%-- JSP another way to make a comment. both work--%>
      
      <!--    
                JSP Objects                                      JSP Action Elements
          out         - JspWriter                                <jsp : forward>
          application - ServletContext                           <jsp : include>
          config      - ServletConfig                            <jsp : plugin>
          page        - object                                   <jsp : param>
          pageContext - PageContext                              <jsp : params>
          exception   - Throwable                                <jsp : fallback>
          request     - HttpServletRequest                       <jsp : usebean>
          response    - HtppServletResponse                      <jsp : setProperty>
                                                                 <jsp : getProperty>
       -->
   
      <!-- output to the screen -->
      <h1>Hello from HTML</h1>
      <%= "<h1> Hello from JSP </h1>" %>
   
      <!-- Saving a variable -->
      <%
         int x = 10;
      %>
  
     <!-- Displays x in a box -->
     <input type = "text" value = "<%= x %>"> <br>
  
      <!-- creating a for loop -->
      <%
         for (int i = 0; i <5 ; i++){
    	     out.print("i = " + i + "<br>");
         }
      %>
      
      <!-- This adds the date -->
      The current date is <%= new Date() %>
      
       <!-- create an action -->
      <form action = "">
         Enter Name: <input type = "text" name = "fname">
         <input type = "submit" name ="click" value = "Click me">
      </form>
      
      <!-- if the click button has been used the webpage will display a hello message -->
      <%
         if(request.getParameter("click")!=null){
        	 out.print("Hello "+ request.getParameter("fname"));
         }
      %>
   
      <!-- Saving adding file to your jsp program. This is similar to the requestdispatcher -->
      <%@include file = "footer.html" %>
   
   </body>
</html>