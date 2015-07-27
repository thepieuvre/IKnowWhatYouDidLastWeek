
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Task" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-task" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'task.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'task.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'task.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'task.lastUpdated.label', default: 'Last Updated')}" />
					
						<th><g:message code="task.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${taskInstanceList}" status="i" var="taskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${taskInstance.id}">${fieldValue(bean: taskInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: taskInstance, field: "description")}</td>
					
						<td><g:formatDate date="${taskInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${taskInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: taskInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${taskInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
