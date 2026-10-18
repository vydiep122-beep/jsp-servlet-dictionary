
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả tra cứu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f1f5f9;
            text-align: center;
            padding-top: 100px;
        }
        .container {
            background: white;
            width: 400px;
            max-width: 85%;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px #ccc;
        }
        a {
            display: inline-block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Kết quả tra cứu</h2>

    <%
        request.setCharacterEncoding("UTF-8");
        String searchWord = request.getParameter("search");

        Map<String, String> dic = new HashMap<>();
        dic.put("hello", "Xin chào");
        dic.put("how", "Thế nào");
        dic.put("book", "Quyển sách");
        dic.put("computer", "Máy tính");
        dic.put("student", "Sinh viên");

        String result = null;
        if (searchWord != null && !searchWord.trim().isEmpty()) {
            result = dic.get(searchWord.trim().toLowerCase());
        }
    %>

    <% if (result != null) { %>
        <p>Từ cần tra: <b><%= searchWord %></b></p>
        <h3>Nghĩa tiếng Việt: <%= result %></h3>
    <% } else { %>
        <p>Không tìm thấy từ:
            <b><%= searchWord == null ? "" : searchWord %></b>
        </p>
    <% } %>

    <a href="index.jsp">Quay lại trang chủ</a>
</div>
</body>
</html>
