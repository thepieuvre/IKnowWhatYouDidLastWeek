
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Imputation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imputation.label', default: 'Imputation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imputation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imputation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="impute" title="${message(code: 'imputation.impute.label', default: 'Impute')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'imputation.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'imputation.lastUpdated.label', default: 'Last Updated')}" />
					
						<th><g:message code="imputation.member.label" default="Member" /></th>
					
						<th><g:message code="imputation.task.label" default="Task" /></th>
					
						<th><g:message code="imputation.week.label" default="Week" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imputationInstanceList}" status="i" var="imputationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imputationInstance.id}">${fieldValue(bean: imputationInstance, field: "impute")}</g:link></td>
					
						<td><g:formatDate date="${imputationInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${imputationInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: imputationInstance, field: "member")}</td>
					
						<td>${fieldValue(bean: imputationInstance, field: "task")}</td>
					
						<td>${fieldValue(bean: imputationInstance, field: "week")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imputationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
