
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="${pageContext.request.contextPath}/assets/bootstrap/css/signin.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <div class="container">

            <form class="form-signin">
                <h2 class="form-signin-heading">Please sign in</h2>
                <label for="name" class="sr-only">Username</label>
                <input type="text" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>&nbsp;
                <label for="pass" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            </form>

        </div> <!-- /container -->
    </body>
</html>
