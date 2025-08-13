<%@page import="com.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>

    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>

    <style>
        body {
            padding: 40px;
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }
        h2 {
            color: #343a40;
            text-align: center;
            margin-bottom: 30px;
        }
        .table th {
            background-color: #e9ecef;
        }
        .table td, .table th {
            vertical-align: middle;
        }
        .btn-delete {
            color: #dc3545;
            padding: 0;
            background: none;
            border: none;
        }
        .btn-delete:hover {
            text-decoration: underline;
        }
        .no-users {
            text-align: center;
            padding: 40px;
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 6px;
        }
        .search-box {
            max-width: 300px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>User List</h2>

    <!-- Search box -->
    <input type="text" id="searchInput" class="form-control search-box" placeholder="Search users...">

    <%
        List<UserBean> users = (List<UserBean>) request.getAttribute("users");
        if (users != null && !users.isEmpty()) {
    %>
    <div class="table-responsive">
        <table id="userTable" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Sr No</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th style="width: 100px;">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    for (UserBean u : users) {
                %>
                <tr>
                    <td><%= count++ %></td>
                    <td><%= u.getFirstName() %></td>
                    <td><%= u.getLastName() %></td>
                    <td><%= u.getEmail() %></td>
                    <td><%= u.getRole() %></td>
                    <td>
                        <a href="deleteusers?userId=<%=u.getUserId() %>">Delete</a> |
                        <a href="viewuser1?userId=<%=u.getUserId() %>">View</a> 
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    <%
        } else {
    %>
    <div class="no-users">
        <p>No users found.</p>
    </div>
    <%
        }
    %>
</div>

<!-- Bootstrap 4.5 JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>



</body>
</html>
