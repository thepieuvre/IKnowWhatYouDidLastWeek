
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Imputation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imputation.label', default: 'Imputation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-imputation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-imputation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list imputation">
			
				<g:if test="${imputationInstance?.impute}">
				<li class="fieldcontain">
					<span id="impute-label" class="property-label"><g:message code="imputation.impute.label" default="Impute" /></span>
					
						<span class="property-value" aria-labelledby="impute-label"><g:fieldValue bean="${imputationInstance}" field="impute"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${imputationInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="imputation.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${imputationInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imputationInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="imputation.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${imputationInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${imputationInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="imputation.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${imputationInstance?.member?.id}">${imputationInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${imputationInstance?.task}">
				<li class="fieldcontain">
					<span id="task-label" class="property-label"><g:message code="imputation.task.label" default="Task" /></span>
					
						<span class="property-value" aria-labelledby="task-label"><g:link controller="task" action="show" id="${imputationInstance?.task?.id}">${imputationInstance?.task?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${imputationInstance?.week}">
				<li class="fieldcontain">
					<span id="week-label" class="property-label"><g:message code="imputation.week.label" default="Week" /></span>
					
						<span class="property-value" aria-labelledby="week-label"><g:link controller="week" action="show" id="${imputationInstance?.week?.id}">${imputationInstance?.week?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:imputationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${imputationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
