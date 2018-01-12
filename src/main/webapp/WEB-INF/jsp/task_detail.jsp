<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@include file="common/header.jsp" %>
<body>
<div class="main-wrapper">
    <%@include file="common/navigation.jsp" %>
    <%--<input type="button" name="getUsers" id="getUsers" value="GET USERS" onclick="RestGet()"/>--%>
    <main class="wrapper vertical-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="title-wrap">
                        <h1>Task name</h1>
                        <p>Task description</p>
                    </div>

                    <div class="comments">
                        <div class="comments-body">
                            <h4 class="media-heading">Comment heading</h4>
                            <p>Comment text</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <jsp:include page="common/footer.jsp"/>
</div>
</body>
</html>