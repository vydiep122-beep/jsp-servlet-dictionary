
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Từ điển Anh - Việt</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            text-align: center;
            padding-top: 100px;
        }
        .container {
            background: white;
            width: 350px;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px #ccc;
        }
        input, button {
            width: 100%;
            box-sizing: border-box;
            padding: 12px;
            margin-top: 12px;
        }
        button {
            background: #1d4ed8;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Từ điển Anh - Việt</h2>
        <form action="dictionary.jsp" method="POST">
            <input type="text" name="search"
                   placeholder="Nhập từ tiếng Anh..." required>
            <button type="submit">Tìm kiếm</button>
        </form>
    </div>
</body>
</html>
