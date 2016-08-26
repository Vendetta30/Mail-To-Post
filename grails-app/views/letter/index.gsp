<%@ page import="com.mailToPost.Letter" %>
<!DOCTYPE html>
<html>
<head>
    <sec:ifNotLoggedIn>
        <meta name="layout" content="main">
    </sec:ifNotLoggedIn>
    <sec:ifLoggedIn>
        <sec:ifAllGranted roles="ROLE_USER">
            <meta name="layout" content="user">
        </sec:ifAllGranted>
        <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_SUBADMIN">
            <meta name="layout" content="admin">
        </sec:ifAnyGranted>
    </sec:ifLoggedIn>
    <title>Letter</title>
</head>

<body>
<div class="page-content">
    <div id="tab-general">
        <div class="row mbl">
            <div class="panel panel-green">
                <div class="panel-heading">Letters</div>

                <div class="panel-body" id="letterList">
                    <g:render template="letterList"/>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
