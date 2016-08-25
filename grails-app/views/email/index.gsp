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

                <div class="col-md-12">
                    <div id="area-chart-spline" style="width: 100%; height: 300px; display: none;">
                    </div>
                </div>

            </div>

            <div class="col-lg-12">

                <div class="row">
                    <div class="col-sm-3 col-md-2">
                        <div class="btn-group btn-group-sm">
                            <button type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Mail
                            &nbsp;<span class="caret"></span></button>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="Email.html#">Mail</a></li>
                                <li><a href="Email.html#">Contacts</a></li>
                                <li><a href="Email.html#">Tasks</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-9 col-md-10">
                        <div class="btn-group">
                            <button type="button" class="btn btn-default"><input type="checkbox"
                                                                                 style="margin: 0; vertical-align: middle;"
                                                                                 class="checkall"/></button>
                            <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span
                                    class="caret"></span><span class="sr-only">Toggle Dropdown</span></button>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="Email.html#">All</a></li>
                                <li><a href="Email.html#">None</a></li>
                                <li><a href="Email.html#">Read</a></li>
                                <li><a href="Email.html#">Unread</a></li>
                                <li><a href="Email.html#">Starred</a></li>
                                <li><a href="Email.html#">Unstarred</a></li>
                            </ul>
                        </div>
                        <button type="button" data-toggle="tooltip" title="Refresh"
                                class="btn btn-default mls mrs" onclick="refreshEmail()"><span
                                class="fa fa-refresh"></span></button>

                        <div class="btn-group">
                            <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">More
                            &nbsp;<span class="caret"></span></button>
                            <ul role="menu" class="dropdown-menu">
                                <li><a href="Email.html#">Mark all as read</a></li>
                                <li class="divider"></li>
                                <li class="text-center pbm">
                                    <small class="text-muted">Select messages to see more actions</small>
                                </li>
                            </ul>
                        </div>

                        <div class="pull-right"><span
                                class="text-muted"><b>1</b>&nbsp; – &nbsp;<b>50</b>&nbsp; of &nbsp;<b>277</b></span>

                            <div class="btn-group mlm">
                                <button type="button" class="btn btn-default"><span class="fa fa-chevron-left"></span>
                                </button>
                                <button type="button" class="btn btn-default"><span class="fa fa-chevron-right"></span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mtl mbl"></div>

                <div class="row">
                    <div class="col-sm-3 col-md-2"><a href="Email.html#" role="button"
                                                      class="btn btn-danger btn-sm btn-block">COMPOSE</a>

                        <div class="mtm mbm"></div>

                        <div class="panel">
                            <div class="panel-body pan">
                                <ul style="background: #fff" class="nav nav-pills nav-stacked">
                                    <li class="active"><a href="Email.html#"><span class="badge pull-right">42</span><i
                                            class="fa fa-inbox fa-fw mrs"></i>Inbox</a></li>
                                    <li><a href="Email.html#"><i class="fa fa-star-o fa-fw mrs"></i>Starred</a></li>
                                    <li><a href="Email.html#"><i class="fa fa-info-circle fa-fw mrs"></i>Important</a>
                                    </li>
                                    <li><a href="Email.html#"><i class="fa fa-plane fa-fw mrs"></i>Sent Mail</a></li>
                                    <li><a href="Email.html#"><span class="badge badge-orange pull-right">3</span><i
                                            class="fa fa-edit fa-fw mrs"></i>Drafts</a></li>
                                </ul>
                            </div>
                        </div>
                        <hr/>

                        <div class="panel">
                            <div class="panel-body pan">
                                <ul style="background: #fff" class="nav nav-pills nav-stacked">
                                    <li class="active"><a href="Email.html#">Buddy Online</a></li>
                                    <li><a href="Email.html#"><i class="fa fa-circle text-yellow pull-right"></i>Home
                                    </a></li>
                                    <li><a href="Email.html#"><i class="fa fa-circle text-success pull-right"></i>Work
                                    </a></li>
                                    <li><a href="Email.html#"><i class="fa fa-circle text-red pull-right"></i>Family</a>
                                    </li>
                                    <li><a href="Email.html#"><i class="fa fa-circle text-muted pull-right"></i>Other
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-9 col-md-10">
                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <g:render template="emailTemplate"/>
                            </div>
                        </div>
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