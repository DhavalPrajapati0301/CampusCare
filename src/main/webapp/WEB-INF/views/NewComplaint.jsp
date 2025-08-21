<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>New Complaint - Complaint Management System</title>
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
        .container {
            max-width: 600px;
            background: white;
            padding: 20px;
            margin: 30px auto;
            border-radius: 8px;
            box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            margin-top: 0;
            color: #2c3e50;
        }
        label {
            display: block;
            margin-top: 12px;
            font-weight: bold;
        }
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }
        button {
            background-color: #3498db;
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 5px;
            margin-top: 15px;
            cursor: pointer;
            font-size: 15px;
        }
        button:hover {
            background-color: #2980b9;
        }
        .back-link {
            display: inline-block;
            margin-top: 10px;
            text-decoration: none;
            color: #2c3e50;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<header>
    <h1>New Complaint</h1>
</header>

<div class="container">
    <h2>Submit a Complaint</h2>
    
    <form action="savecomp" method="post">
        <label for="title">Complaint Title</label>
        <input type="text" id="title" name="title" required>

        <label for="category">Category</label>
        <input type="text" id="category" name="category" placeholder="e.g. Maintenance, Security" required>

        <label for="priority">Priority</label>
        <select id="priority" name="priority" required>
            <option value="LOW">Low</option>
            <option value="MEDIUM">Medium</option>
            <option value="HIGH">High</option>
        </select>

		 
        <label for="status">Status</label>
        <select id="status" name="status" required>
            <option value="IN_PROGRESS">In Progress</option>
            <option value="RESOLVED">Resolved</option>
            <option value="PANDING">Panding</option>
            
<label for="assignTo">Assign To</label>
<select id="assignTo" name="assignto">
    <option value="">-- Select User --</option>
    <c:forEach var="user" items="${userList}">
        <option value="${user.userId}">
            ${user.firstName} 
        </option>
    </c:forEach>
</select>



        <label for="resolutionNotes">Resolution Notes</label>
        <textarea id="resolutionNotes" name="resolutionNotes"></textarea>

        <button type="submit">Submit Complaint</button>
    </form>

    <a href="${pageContext.request.contextPath}/student/home" class="back-link">⬅ Back to Home</a>
</div>

</body>
</html>
