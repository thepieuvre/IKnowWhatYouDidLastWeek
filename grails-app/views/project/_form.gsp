<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="project.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="24" required="" value="${projectInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${projectInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" value="${projectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'organization', 'error')} required">
	<label for="organization">
		<g:message code="project.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organization" name="organization.id" from="${thepieuvre.iknowwhatyoudidlastweek.organization.Organization.list()}" optionKey="id" required="" value="${projectInstance?.organization?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'phases', 'error')} ">
	<label for="phases">
		<g:message code="project.phases.label" default="Phases" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.phases?}" var="p">
    <li><g:link controller="phase" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="phase" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'phase.label', default: 'Phase')])}</g:link>
</li>
</ul>


</div>

