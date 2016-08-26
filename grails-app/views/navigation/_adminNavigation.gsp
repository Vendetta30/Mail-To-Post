<nav id="sidebar" role="navigation" data-step="2"
     data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
     data-position="right" class="navbar-default navbar-static-side">
    <div class="sidebar-collapse menu-scroll">
        <ul id="side-menu" class="nav">

            <div class="clearfix"></div>
            <li class="${(params.controller == 'email' && params.action == 'index') ? 'active' : ''}">
                <a href="${createLink(controller: 'email', action: 'index')}">
                    <i class="fa fa-envelope-o"></i>
                    <span class="menu-title">Email</span>
                </a>

            </li>
            <li class="${(params.controller == 'letter' && params.action == 'index') ? 'active' : ''}">
                <a href="${createLink(controller: 'letter', action: 'index')}">
                    <i class="fa  fa-file-o"></i>
                    <span class="menu-title">Letter</span>
                </a>
            </li>
        </ul>
    </div>
</nav>