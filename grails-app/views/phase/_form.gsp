<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Phase" %>



<div class="fieldcontain ${hasErrors(bean: phaseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="phase.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${phaseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phaseInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="phase.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" value="${phaseInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phaseInstance, field: 'position', 'error')} required">
	<label for="position">
		<g:message code="phase.position.label" default="Position" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="position" type="number" value="${phaseInstance.position}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: phaseInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="phase.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${thepieuvre.iknowwhatyoudidlastweek.core.Project.list()}" optionKey="id" required="" value="${phaseInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phaseInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="phase.tasks.label" default="Tasks" />
		
	</label>
	<g:select name="tasks" from="${thepieuvre.iknowwhatyoudidlastweek.core.Task.list()}" multiple="multiple" optionKey="id" size="5" value="${phaseInstance?.tasks*.id}" class="many-to-many"/>

</div>

