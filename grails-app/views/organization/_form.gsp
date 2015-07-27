<%@ page import="thepieuvre.iknowwhatyoudidlastweek.organization.Organization" %>



<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="organization.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" maxlength="24" required="" value="${organizationInstance?.code}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="organization.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${organizationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="organization.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="1024" value="${organizationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="organization.members.label" default="Members" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${organizationInstance?.members?}" var="m">
    <li><g:link controller="member" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="member" action="create" params="['organization.id': organizationInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'member.label', default: 'Member')])}</g:link>
</li>
</ul>


</div>

