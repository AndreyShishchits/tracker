<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<header class="header">

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="https://vk.com/wtfomgbrb" target="_blank">
                    Andrey
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <sec:authorize access="isAnonymous()">
                            <a href="${path}/login">Login</a>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <a href="${path}/logout">
                                <sec:authentication property="principal.username"/>, Logout
                            </a>
                        </sec:authorize>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

</header>