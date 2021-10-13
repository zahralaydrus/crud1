<%-- 
    Document   : userList
    Created on : May 30, 2021, 1:54:57 AM
    Author     : zahra
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "org.iceberg.Pertemuan12.User"%>
<%@page import = "java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
    </head>
    <body>
    <center>
        <h1>User Management</h1>
        <h3><a href="new">Add New User</a> | <a href="list">List All Users</a> </h3>
    </center>
    <div align="center">
        <table border="1" cellspacing="0" cellpadding="8">
            <caption><h2>List of Users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Actions</th>
            </tr>
            <%
                List<User>listUser=null;
                if (request.getAttribute("listUser")!= null){
                listUser= (List<User>)request.getAttribute("listUser");
                
                for (User user : listUser){ %>
                <tr>
                    <td><%=user.getId()%></td>
                    <td><%=user.getName()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><%=user.getCountry()%></td>
                    <td>
                        <a href="edit?id=<%=user.getId()%>">Edit</a>
                        <a href="delete?id=<%=user.getId()%>">Delete</a>
                    </td>  
                </tr>
                <% }} %>
        </table>
    </div>
    </body>
</html>
