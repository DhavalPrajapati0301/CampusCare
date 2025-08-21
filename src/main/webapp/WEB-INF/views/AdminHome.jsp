<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin Home - Complaint Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #2c3e50;
            padding: 15px;
            color: white;
            text-align: center;
        }
        nav {
            margin: 20px;
            display: flex;
            gap: 15px;
        }
        nav a {
            text-decoration: none;
            background: #3498db;
            color: white;
            padding: 8px 14px;
            border-radius: 5px;
        }
        nav a:hover {
            background: #2980b9;
        }
        .logout-btn {
            margin-left: auto;
            background: #e74c3c !important;
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome, Admin</h1>
    <p>Complaint Management System</p>
</header>

<nav>
    <a href="signup">➕ Add User</a>
    <a href="${pageContext.request.contextPath}/admin/listStudents">👨‍🎓 List Students</a>
    <a href="${pageContext.request.contextPath}/admin/listAdmins">🛠 List Admins</a>
    <a href="${pageContext.request.contextPath}/logout" class="logout-btn">🚪 Logout</a>
</nav>

<section style="margin: 20px;">
    <h2>Admin Dashboard</h2>
    <p>Select an action from the menu above.</p>
</section>

</body>
</html>
