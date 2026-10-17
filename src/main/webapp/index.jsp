
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Từ điển Anh - Việt</title>
</head>
<body style="font-family:Arial;text-align:center;margin-top:100px">
    <h2>Từ điển Anh - Việt</h2>

    <form action="translate" method="POST">
        <input type="text" name="word"
               placeholder="Nhập từ tiếng Anh..." required>
        <button type="submit">Tìm kiếm</button>
    </form>
</body>
</html>
