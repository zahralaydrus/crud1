<%-- 
    Document   : userForm
    Created on : May 30, 2021, 2:11:31 AM
    Author     : zahra
--%>

<%@page import="org.iceberg.Pertemuan12.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
    </head>
    <body>
    <center>
        <h1>User Management</h1>
        <h3><a href="new">Add New User</a> | <a href="list">List All Users</a></h3>
    </center>
    <div align="center">
        <%
         User user = null;
         if (request.getAttribute("user")!=null){
         user = (User)request.getAttribute("user");
         %>
         <form action="update" method="post">
             <input type="hidden" name="id" value ="<%=user.getId()%>"/>
             <table border="0" cellpadding="5">
                 <tr>
                     <th>User Name :</th>
                     <td><input type="text"name="name" value ="<%=user.getName()%>"/></td>
                 </tr>
                 
                  <tr>
                     <th>User Email :</th>
                     <td><input type="text"name="email" value ="<%=user.getEmail()%>"/></td>
                 </tr>
                 
                  <tr>
                     <th>Country :</th>
                     <td><input type="text"name="country" value ="<%=user.getCountry()%>"/></td>
                 </tr>
                 
                 <tr>
                     <td colspan="2" align ="center">
                         <input type="submit" value="Update"/>
                         
                     </td>
                 </tr>
         
             </table>
         </form>
                 <% } else { %>
                 <form action="insert" method="post">
                     <table border="0"  cellpadding="5">
                         <tr>
                             <th>User Name: </th>
                             <td><input type="text" name="name" value=""/></td>
                
                         </tr>
                         
                         <tr>
                             <th>User Email: </th>
                             <td><input type="text" name="email" value=""/></td>
                
                         </tr>
                         
                         <tr>
                             <th>Country: </th>
                             <td><input type="text" name="country" value=""/></td>
                
                         </tr>
                         <tr>
                             <td colspan="2" align="center">
                                 <input type="submit" value ="Save"/>
                             </td>
                         </tr>
                     </table>
                 </form>
              <% } %>
    </div>
    </body>
</html>
