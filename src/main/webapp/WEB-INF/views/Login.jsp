<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
    <style>
        body {
            background: linear-gradient(to right, #e3f2fd, #bbdefb);
            font-family: 'Segoe UI', sans-serif;
        }
        .login-container {
            max-width: 400px;
            margin: 80px auto;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        .card-header {
            background: linear-gradient(45deg, #2196f3, #21cbf3);
            color: white;
            text-align: center;
            font-weight: bold;
            font-size: 1.2rem;
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
        .btn-primary {
            background: linear-gradient(45deg, #2196f3, #64b5f6);
            border: none;
            border-radius: 10px;
            transition: transform 0.2s;
        }
        .btn-primary:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="login-container">
    <div class="card">
        <div class="card-header">
            Login
        </div>
        <div class="card-body">
            <form action="login" method="post">
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email" required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                </div>

                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap 4.5 JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
