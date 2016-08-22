<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin"/>
    <title>Dashboard</title>
</head>

<body>
<div class="page-content">
    <div id="tab-general">
        <div id="sum_box" class="row mbl">
            <div class="col-sm-6 col-md-3">
                <div class="panel profit db mbm">
                    <div class="panel-body">
                        <p class="icon">
                            <i class="icon fa fa-shopping-cart"></i>
                        </p>
                        <h4 class="value">
                            <span data-counter="" data-start="10" data-end="50" data-step="1"
                                  data-duration="0">
                            </span><span>$</span></h4>

                        <p class="description">
                            Profit description</p>

                        <div class="progress progress-sm mbn">
                            <div role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 80%;" class="progress-bar progress-bar-success">
                                <span class="sr-only">80% Complete (success)</span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <div class="panel income db mbm">
                    <div class="panel-body">
                        <p class="icon">
                            <i class="icon fa fa-money"></i>
                        </p>
                        <h4 class="value">
                            <span>215</span><span>$</span></h4>

                        <p class="description">
                            Income detail</p>

                        <div class="progress progress-sm mbn">
                            <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 60%;" class="progress-bar progress-bar-info">
                                <span class="sr-only">60% Complete (success)</span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <div class="panel task db mbm">
                    <div class="panel-body">
                        <p class="icon">
                            <i class="icon fa fa-signal"></i>
                        </p>
                        <h4 class="value">
                            <span>215</span></h4>

                        <p class="description">
                            Task completed</p>

                        <div class="progress progress-sm mbn">
                            <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 50%;" class="progress-bar progress-bar-danger">
                                <span class="sr-only">50% Complete (success)</span></div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-3">
                <div class="panel visit db mbm">
                    <div class="panel-body">
                        <p class="icon">
                            <i class="icon fa fa-group"></i>
                        </p>
                        <h4 class="value">
                            <span>128</span></h4>

                        <p class="description">
                            Visitor description</p>

                        <div class="progress progress-sm mbn">
                            <div role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 70%;" class="progress-bar progress-bar-warning">
                                <span class="sr-only">70% Complete (success)</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mbl">
            <div class="col-lg-8">
                <div class="panel">
                    <div class="panel-body">
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="portlet box">
                    <div class="portlet-header">
                        <div class="caption">
                            Chats</div>
                    </div>

                    <div class="portlet-body"></div>
                </div>
            </div>
        </div>

        <div class="row mbl">
            <div class="col-lg-4">
                <div class="panel">
                    <div class="panel-body">
                        <div class="profile">
                            <div style="margin-bottom: 15px" class="row">
                                <div class="col-xs-12 col-sm-8">
                                    <h2>
                                        John Doe</h2>

                                    <p>
                                        <strong>About:</strong> Web Designer / UI.</p>

                                    <p>
                                        <strong>Hobbies:</strong> Read, out with friends, listen to music, draw and learn
                                    new things.</p>

                                    <p>
                                        <strong class="mrs">Skills:</strong><span
                                            class="label label-green mrs">html5</span><span
                                            class="label label-green mrs">css3</span><span
                                            class="label label-green mrs">jquery</span></p>
                                </div>

                                <div class="col-xs-12 col-sm-4 text-center">
                                    <figure>
                                        <asset:image src="admin/avatar/128.jpg" alt=""
                                                     style="display: inline-block"
                                                     class="img-responsive img-circle"/>
                                        <figcaption class="ratings"><p><a href="index.html#"><span
                                                class="fa fa-star"></span></a><a href="index.html#"><span
                                                class="fa fa-star"></span></a><a href="index.html#"><span
                                                class="fa fa-star"></span></a><a href="index.html#"><span
                                                class="fa fa-star"></span></a><a href="index.html#"><span
                                                class="fa fa-star-o"></span></a></p></figcaption>
                                    </figure>
                                </div>
                            </div>

                            <div class="row text-center divider">
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>20,7K</strong></h2>

                                    <p>
                                        <small>Followers</small>
                                    </p>
                                    <button class="btn btn-yellow btn-block">
                                        <span class="fa fa-plus-circle"></span>&nbsp; Follow
                                    </button>
                                </div>

                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>245</strong></h2>

                                    <p>
                                        <small>Following</small>
                                    </p>
                                    <button class="btn btn-blue btn-block">
                                        <span class="fa fa-user"></span>&nbsp; Profile
                                    </button>
                                </div>

                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>43</strong></h2>

                                    <p>
                                        <small>Snippets</small>
                                    </p>

                                    <div class="btn-group dropup">
                                        <button type="button" data-toggle="dropdown"
                                                class="btn btn-orange dropdown-toggle">
                                            <span class="fa fa-gear"></span>&nbsp; Options
                                        </button>
                                        <ul role="menu" class="dropdown-menu pull-right text-left">
                                            <li><a href="index.html#"><span
                                                    class="fa fa-envelope"></span>&nbsp; Send an email</a>
                                            </li>
                                            <li><a href="index.html#"><span
                                                    class="fa fa-list"></span>&nbsp; Add or remove from a list
                                            </a></li>
                                            <li class="divider"></li>
                                            <li><a href="index.html#"><span
                                                    class="fa fa-warning"></span>&nbsp; Report this user for spam
                                            </a></li>
                                            <li class="divider"></li>
                                            <li><a href="index.html#" role="button"
                                                   class="btn disabled">Unfollow</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="portlet box">
                    <div class="portlet-header">
                        <div class="caption">
                            Todo List</div>
                    </div>

                    <div style="overflow: hidden;" class="portlet-body">
                        <ul class="todo-list sortable">
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    Sed ut perspiciatis unde omnis iste</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo
                                    minus id</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    Et harum quidem rerum facilis est</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                            <li class="clearfix"><span class="drag-drop"><i></i></span>

                                <div class="todo-check pull-left">
                                    <input type="checkbox" value=""/></div>

                                <div class="todo-title">
                                    Excepteur sint occaecat cupidatat non proident</div>

                                <div class="todo-actions pull-right clearfix">
                                    <a href="index.html#" class="todo-complete"><i class="fa fa-check"></i>
                                    </a><a href="index.html#" class="todo-edit">
                                    <i class="fa fa-edit"></i></a><a href="index.html#"
                                                                     class="todo-remove"><i
                                            class="fa fa-trash-o">
                                    </i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-8">
                <div class="timeline-centered timeline-sm">
                    <article class="timeline-entry">
                        <div class="timeline-entry-inner">
                            <time datetime="2014-01-10T03:45"
                                  class="timeline-time"><span>12:45 AM</span><span>Today</span></time>

                            <div class="timeline-icon bg-violet"><i class="fa fa-exclamation"></i></div>

                            <div class="timeline-label"><h4 class="timeline-title">New Project</h4>

                                <p>Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial.</p>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-entry left-aligned">
                        <div class="timeline-entry-inner">
                            <time datetime="2014-01-10T03:45"
                                  class="timeline-time"><span>9:15 AM</span><span>Today</span></time>

                            <div class="timeline-icon bg-green"><i class="fa fa-group"></i></div>

                            <div class="timeline-label bg-green"><h4 class="timeline-title">Job Meeting</h4>

                                <p>Caulie dandelion maize lentil collard greens radish arugula sweet pepper water spinach kombu courgette.</p>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-entry">
                        <div class="timeline-entry-inner">
                            <time datetime="2014-01-09T13:22"
                                  class="timeline-time"><span>8:20 PM</span><span>04/03/2013</span></time>

                            <div class="timeline-icon bg-orange"><i class="fa fa-paper-plane"></i></div>

                            <div class="timeline-label bg-orange"><h4
                                    class="timeline-title">Daily Feeds</h4>

                                <p>Parsley amaranth tigernut silver beet maize fennel spinach ricebean black-eyed. Tolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial.
                                </p></div>
                        </div>

                        <div class="timeline-entry-inner">
                            <div style="-webkit-transform: rotate(-90deg); -moz-transform: rotate(-90deg);"
                                 class="timeline-icon"><i class="fa fa-plus"></i></div>
                        </div>
                    </article>
                </div>
            </div>
            <!--<div class="col-lg-4">
                            <div id="my-calendar"></div>
                        </div>-->
            <div class="col-lg-4">
                <div class="page-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="portlet box">
                                <div class="portlet-header">
                                    <div class="caption">
                                        Pie with gradient fill</div>

                                    <div class="tools">
                                        <i class="fa fa-chevron-up"></i><i data-toggle="modal"
                                                                           data-target="#modal-config"
                                                                           class="fa fa-cog"></i><i
                                            class="fa fa-refresh"></i><i class="fa fa-times"></i>
                                    </div>
                                </div>

                                <div class="portlet-body">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="portlet box">
                    <div class="portlet-header">
                        <div class="caption">
                            Scatter plot</div>

                        <div class="tools">
                            <i class="fa fa-chevron-up"></i><i data-toggle="modal"
                                                               data-target="#modal-config"
                                                               class="fa fa-cog"></i><i
                                class="fa fa-refresh"></i><i class="fa fa-times"></i>
                        </div>
                    </div>

                    <div class="portlet-body">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>