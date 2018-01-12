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
                <a class="navbar-brand"
                   href="https://www.linkedin.com/in/%D0%B0%D0%BD%D0%B4%D1%80%D0%B5%D0%B9-%D1%88%D0%B8%D1%89%D0%B8%D1%86-ba601a14b/"
                   target="_blank">
                    Andrey
                </a>
            </div>

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
            </div>
    </nav>

</header>