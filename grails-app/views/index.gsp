<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Third Bridge Creative</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<content tag="nav">
    <g:if test="${session.magic}">
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Application Status <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Environment: ${grails.util.Environment.current.name}</a></li>
                <li><a href="#">App profile: ${grailsApplication.config.grails?.profile}</a></li>
                <li><a href="#">App version:
                        <g:meta name="info.app.version"/></a>
                </li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Grails version:
                        <g:meta name="info.app.grailsVersion"/></a>
                </li>
                <li><a href="#">Groovy version: ${GroovySystem.getVersion()}</a></li>
                <li><a href="#">JVM version: ${System.getProperty('java.version')}</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Artefacts <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="#">Controllers: ${grailsApplication.controllerClasses.size()}</a></li>
                <li><a href="#">Domains: ${grailsApplication.domainClasses.size()}</a></li>
                <li><a href="#">Services: ${grailsApplication.serviceClasses.size()}</a></li>
                <li><a href="#">Tag Libraries: ${grailsApplication.tagLibClasses.size()}</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Installed Plugins <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
                    <li><a href="#">${plugin.name} - ${plugin.version}</a></li>
                    </g:each>
            </ul>
        </li></g:if>
    </content>

<!--<div class="svg" role="presentation">
    <div class="grails-logo-container">
        <asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>
    </div>
</div>-->

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome ${session.user.nickName}</h1>

        <p>
            This is the Third Bridge CMS site.
        </p>

        <h2>My Assignments</h2>
        <h3>Writer Tasks</h3>
        <g:each in="${nbcms.Assignment.findAllWhere(writer: session.user, writerComplete: null  ) }" var="ait">
            <g:link controller="Assignment" action="edit" id="${ait.id}">${ait.externalId}: ${ait.playlistName}</g:link>
            <g:link controller="Assignment" action="completeWriter" id="${ait.id}">Mark Complete</g:link>
        </g:each>
        <br />
        <h3>Editor Tasks</h3>
        <g:each in="${nbcms.Assignment.findAllWhere(editor: session.user, editorComplete: null  ) }" var="ait">
            <g:link controller="Assignment" action="edit" id="${ait.id}">${ait.externalId}: ${ait.playlistName}</g:link>
            <g:link controller="Assignment" action="completeWriter" id="${ait.id}">Mark Complete</g:link>
        </g:each>
        


        <g:if test="${session.user.isAdmin}">
            <h2>Manage Data</h2>
            <g:link controller="Assignment">Assignments</g:link> <br />
            <g:link controller="User">Users</g:link>
        </g:if>

        <g:if test="${session.magic}">
            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                            </li>
                    </g:each>
                </ul>
            </div>
        </g:if>
    </section>
</div>

</body>
</html>
