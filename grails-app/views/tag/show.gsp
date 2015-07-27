
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Tag" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tag.label', default: 'Tag')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tag" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tag" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tag">
			
				<g:if test="${tagInstance?.internalCode}">
				<li class="fieldcontain">
					<span id="internalCode-label" class="property-label"><g:message code="tag.internalCode.label" default="Internal Code" /></span>
					
						<span class="property-value" aria-labelledby="internalCode-label"><g:fieldValue bean="${tagInstance}" field="internalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.tag}">
				<li class="fieldcontain">
					<span id="tag-label" class="property-label"><g:message code="tag.tag.label" default="Tag" /></span>
					
						<span class="property-value" aria-labelledby="tag-label"><g:fieldValue bean="${tagInstance}" field="tag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="tag.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${tagInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${tagInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="tag.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${tagInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tagInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tagInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
