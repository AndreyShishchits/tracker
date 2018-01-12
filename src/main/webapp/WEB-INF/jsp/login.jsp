<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="common/header.jsp"%>
<body>
<div class="main-wrapper">
    <%@include file="common/navigation.jsp"%>
    <main class="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>Login To Your Account</strong>
                        </div>
                        <div class="panel-body">
                            <form method="POST" action="${path}/login"  class="form-signin form-horizontal">
                                <c:if test="${error != null}">
                                    <div class="alert alert-danger">
                                        <strong>${error}</strong>
                                    </div>
                                </c:if>
                                <c:if test="${message != null}">
                                    <div class="alert alert-success">
                                        <strong>${message}</strong>
                                    </div>
                                </c:if>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="input-group input-group-md">
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-user"></span>
											</span>
                                            <input type="text" class="form-control" name="login" placeholder="Enter Username"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="input-group input-group-md">
											<span class="input-group-addon">
												<span class="glyphicon glyphicon-lock"></span>
											</span>
                                            <input type="password" class="form-control" name="password" placeholder="Enter Password" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-default btn-block">
                                            <span class="glyphicon glyphicon-log-in"></span> Login
                                        </button>
                                        <div class="register">If you want to register <a href="${path}/registration">click here</a></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <%@include file="common/footer.jsp"%>
</div>
</body>
</html>