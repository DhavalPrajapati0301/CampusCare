<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.bean.UserBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">CMS</a>
        <div class="d-flex">
            <a class="btn btn-outline-light" href="logout">Logout</a>
        </div>
    </div>
</nav>

<div class="container mt-4">
    <div class="row">
        
        <div class="col-md-3">
            <!-- Sidebar -->
            <div class="list-group">
                <a href="newcom" class="list-group-item list-group-item-action">New Complaint</a>
                <a href="ListComplaint" class="list-group-item list-group-item-action">My Complaints</a>
            </div>
        </div>

        <div class="col-md-9">
            <!-- Content -->
            <div class="card shadow-sm">
                <div class="card-body">
                    <h4 class="card-title">Student Dashboard</h4>
                    <p class="card-text">
                        Use the menu on the left to raise a new complaint or check your existing complaints.
                    </p>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>	