<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đếm số ký tự</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 15px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
            font-size: 14px;
            margin-top: 10px;
        }

        .result {
            margin-top: 20px;
            font-size: 18px;
            text-align: center;
        }

        .result p {
            margin: 5px 0;
        }

    </style>
</head>
<body>

    <div class="container">
        <h2>Nhập chuỗi để đếm số ký tự:</h2>

        <!-- Form action updated to match the servlet mapping '/count' -->
        <form action="count" method="post">
            <input type="text" name="inputString" class="input-field" value="<%= request.getAttribute("inputString") != null ? request.getAttribute("inputString") : "" %>" placeholder="Nhập chuỗi của bạn" required/>
            <button type="submit">Đếm</button>
        </form>

        <!-- Display error message if any -->
        <% 
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <div class="error"><%= error %></div>
        <% 
            }
        %>

        <!-- Display the count if it's calculated -->
        <% 
            String inputString = (String) request.getAttribute("inputString");
            Integer count = (Integer) request.getAttribute("count");
            if (inputString != null && count != null) {
        %>
            <div class="result">
                <p><strong>Chuỗi: </strong><%= inputString %></p>
                <p><strong>Số ký tự: </strong><%= count %></p>
            </div>
        <% 
            }
        %>
    </div>

</body>
</html>
