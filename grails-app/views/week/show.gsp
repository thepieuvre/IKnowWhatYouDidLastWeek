
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Week" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'week.label', default: 'Week')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-week" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-week" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list week">
			
				<g:if test="${weekInstance?.snippet}">
				<li class="fieldcontain">
					<span id="snippet-label" class="property-label"><g:message code="week.snippet.label" default="Snippet" /></span>
					
						<span class="property-value" aria-labelledby="snippet-label"><g:fieldValue bean="${weekInstance}" field="snippet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.week}">
				<li class="fieldcontain">
					<span id="week-label" class="property-label"><g:message code="week.week.label" default="Week" /></span>
					
						<span class="property-value" aria-labelledby="week-label"><g:fieldValue bean="${weekInstance}" field="week"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="week.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${weekInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.imputations}">
				<li class="fieldcontain">
					<span id="imputations-label" class="property-label"><g:message code="week.imputations.label" default="Imputations" /></span>
					
						<g:each in="${weekInstance.imputations}" var="i">
						<span class="property-value" aria-labelledby="imputations-label"><g:link controller="imputation" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="week.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${weekInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="week.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${weekInstance?.member?.id}">${weekInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${weekInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="week.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${weekInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:weekInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${weekInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
