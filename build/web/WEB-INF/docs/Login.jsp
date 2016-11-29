<%-- 
    Document   : UserLogin
    Created on : 11-Nov-2016, 15:56:25
    Author     : Susan Rai
--%>
<div class="main">
    <div class="content-screen">
        <div class="title">
            <h1>Login</h1>
        </div>
        <form class="form" name="login" action="${pageContext.request.contextPath}/Login" method="post">
            <input class="control-group" type="text" name="username"  value="" placeholder="Username">
            <input class="control-group" type="password" name="password" value="" placeholder="Password">
            <input class="btn" type="submit" value="Login">
            <input class="btn" type="reset" value="Reset">
            <!--Dispaly the error message-->
            <c:if test="${not empty post}">
                ${ErrorMessage}
            </c:if>       
        </form>
    </div>
</div>