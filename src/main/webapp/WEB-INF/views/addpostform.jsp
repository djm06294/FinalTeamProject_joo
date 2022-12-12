<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

    <h1>Add New Post</h1>
<%--    <form action="addok" method="post" enctype="multipart/form-data">--%>
    <form action="addok" method="post">
        <table id="edit">
            <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
            <tr><td>Price:</td><td><input type="text" name="price"/></td></tr>
            <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
            <tr><td>Place:</td><td><input type="text" vaule="거래희망 장소" name="place"/></td></tr>
            <tr><td>Number:</td><td><input type="text" name="number"/></td></tr>
            <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
        </table>
        <button type="button" onclick="location.href='list'">Lists</button>
        <button type="submit">Register</button>
    </form>

</body>
</html>