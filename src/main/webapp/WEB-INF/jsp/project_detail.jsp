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
                        <h1>Project name</h1>
                    </div>
                    <div class="table-responsive task-table">
                        <table <%--data-toggle="table"--%> class="table table-bordered" id="table">
                            <thead>
                            <tr>
                                <th data-field="id">Id</th>
                                <th data-field="title">Name</th>
                                <th data-field="task">Name</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <form method="get" action="/tasks" class="form-horizontal addProj">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="id" placeholder="Enter Task Name" />
                                        <input type="text" class="form-control" name="id" placeholder="Enter Task Description" />
                                    </div>
                                    <div class="col-md-4">
                                        <input type="submit" class="btn-primary btn btn-block" value="Confirm">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 col-sm-12">
                    <form method="get" action="/tasks/details" class="form-horizontal">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="id" placeholder="Enter task id" />
                                    </div>
                                    <div class="col-md-4">
                                        <input type="submit" class="btn-default btn btn-block" value="view task">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </main>
    <jsp:include page="common/footer.jsp"/>
</div>
</body>
</html>