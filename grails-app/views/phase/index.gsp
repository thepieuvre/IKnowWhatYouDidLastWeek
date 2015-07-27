
<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Phase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phase.label', default: 'Phase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phase" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'phase.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'phase.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'phase.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'phase.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="position" title="${message(code: 'phase.position.label', default: 'Position')}" />
					
						<th><g:message code="phase.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phaseInstanceList}" status="i" var="phaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phaseInstance.id}">${fieldValue(bean: phaseInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: phaseInstance, field: "description")}</td>
					
						<td><g:formatDate date="${phaseInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${phaseInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: phaseInstance, field: "position")}</td>
					
						<td>${fieldValue(bean: phaseInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phaseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
