<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'assignment.label', default: 'Assignment')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-assignment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="create-assignment" class="content scaffold-create" role="main">
                <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.assignment}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.assignment}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <div class="fieldcontain"> <label for="createdDate">Created Date</label><g:datePicker name="createdDate" id="createdDate" precision="day" /> </div> 
                    <div class="fieldcontain"> <label for="cycle">Cycle</label><select name="cycle" id="cycle"> <option>1</option><option>2</option><option>3</option> </select> </div> 
                    <div class="fieldcontain"> <label for="externalId">ID</label><input type="number" name="externalId" id="externalId" step="1" /> </div> 
                    <div class="fieldcontain"> <label for="contentType">Content Type</label><select type="text" name="contentType" id="contentType"/> <option>Album Review</option><option>Tier 1</option><option>Tier 2</option> <option>Tier 3</option> </select> </div> 
                    <div class="fieldcontain"> <label for="playlistName">Playlist Name</label><input type="text" name="playlistName" id="playlistName" /> </div> 
                    <div class="fieldcontain"> <label for="notes">Notes</label><textarea name="notes" id="notes" rows="3"></textarea> </div> 
                    <div class="fieldcontain"> <label for="artist">Artist</label><input type="text" name="artist" id="artist" /> </div> 
                    <div class="fieldcontain"> <label for="album">Album</label><input type="text" name="album" id="album" /> </div> 
                    <div class="fieldcontain"> <label for="songsOnThePlaylist">Songs on the Playlist</label><textarea name="songsOnThePlaylist" id="songsOnThePlaylist" rows="3"></textarea> </div> 
                    <div class="fieldcontain"> <label for="isTransfer">Transfer</label><g:checkBox name="isTransfer" id="isTransfer" /> </div> 
                    <div class="fieldcontain"> <label for="isShortBlurb">Short Blurb</label><g:checkBox name="isShortBlurb" id="isShortBlurb" /> </div> 
                    <div class="fieldcontain"> <label for="genre">Genre</label><input type="text" name="genre" id="genre" /> </div> 
                    <div class="fieldcontain"> <label for="writer">Writer</label><g:select id="writer" name='writer' noSelection="${['null':'']}" from='${nbcms.User.list()}' optionKey="id" optionValue="nickName"></g:select> </div> 
                    <div class="fieldcontain"> <label for="editor">Editor</label><g:select id="editor" name='editor' noSelection="${['null':'']}" from='${nbcms.User.list()}' optionKey="id" optionValue="nickName"></g:select> </div> 
                    </fieldset>

                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
