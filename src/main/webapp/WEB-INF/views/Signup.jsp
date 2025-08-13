<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style>
        body {
            background: linear-gradient(to right, #e3f2fd, #bbdefb);
            font-family: 'Segoe UI', sans-serif;
        }
        .card {
            border-radius: 15px;
            overflow: hidden;
        }
        .card-header {
            background: linear-gradient(45deg, #2196f3, #21cbf3);
        }
        .card-header h4 {
            font-weight: bold;
            letter-spacing: 1px;
        }
        .form-control {
            border-radius: 10px;
            border: 1px solid #90caf9;
            transition: 0.3s;
        }
        .form-control:focus {
            box-shadow: 0 0 8px rgba(33, 150, 243, 0.5);
            border-color: #2196f3;
        }
        .btn-success {
            background: linear-gradient(45deg, #4caf50, #81c784);
            border: none;
            border-radius: 10px;
            transition: transform 0.2s;
        }
        .btn-success:hover {
            transform: scale(1.05);
        }
        .btn-secondary {
            border-radius: 10px;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <div class="card shadow-lg">
        <div class="card-header text-white">
            <h4 class="mb-2" align="center">User Registration</h4>
        </div>
        <div class="card-body">
            <form action="saveuser" method="post">
               
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" required>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>

                <div class="form-group">
                    <label for="role">Role</label>
                    <select class="form-control" id="role" name="role" required>
                        <option value="">-- Select Role --</option>
                        <option value="admin">Admin</option>
                        <option value="student">Student</option>
                    </select>
                </div>

       <!--         <div class="form-group">
                    <label for="createdAt">Created At</label>
                    <input type="datetime-local" class="form-control" id="createdAt" name="createdAt" required>
                </div>
 --> 
                <button type="submit" class="btn btn-success px-4">Submit</button>
                <button type="reset" class="btn btn-secondary px-4">Reset</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap 4.5 JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
