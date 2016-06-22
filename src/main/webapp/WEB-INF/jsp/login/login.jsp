
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <form method="post" action="">
                <div class="form-group">
                    <label>Username:</label>
                    <input type="text" required="required" placeholder="Enter username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" required="required" placeholder="Enter password" class="form-control"/>
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>
    </body>
</html>
