<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>파일 업로드 예제</title>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
</head>
<body>
    <form name="fileForm" method="post" enctype="multipart/form-data" action="fileUpload.jsp">
        작성자:
        <input type="text" name="user"><br>
        제 목:
        <input type="text" name="title"><br>
        파일명:
        <input type="file" name="uploadFile"><br>
        <input type="submit" value="파일올리기"><br>
    </form>
</body>
</html>
