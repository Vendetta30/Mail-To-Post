<%@ page contentType="text/html;charset=UTF-8" %>
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
    <title>Email Box</title>
</head>

<body>
<div class="page-content">
    <div id="tab-general">
        <div class="row mbl">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-sm-3 col-md-2">
                        <div class="mtm mbm"></div>
                        <g:render template="boxTypeTemplate"/>
                        <hr/>
                    </div>

                    <div class="col-sm-9 col-md-10" id="home">
                        <g:render template="emailTemplate"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function refreshEmail() {
        var url = '${createLink(controller: 'email', action: 'refreshEmail')}';
        var data = $("#ajaxLoginForm").serialize();
        $.ajax({
            url: url,
            datatype: 'json',
            type: 'POST',
            success: function (response) {
                if (response.success) {
                }
            },
            error: function (data) {
                emptyForm();
            }
        });
    }
</script>
</body>
</html>