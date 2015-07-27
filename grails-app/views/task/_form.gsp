<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="task.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${taskInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" value="${taskInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="task.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${thepieuvre.iknowwhatyoudidlastweek.core.Project.list()}" optionKey="id" required="" value="${taskInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'tags', 'error')} ">
	<label for="tags">
		<g:message code="task.tags.label" default="Tags" />
		
	</label>
	<g:select name="tags" from="${thepieuvre.iknowwhatyoudidlastweek.core.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${taskInstance?.tags*.id}" class="many-to-many"/>

</div>

