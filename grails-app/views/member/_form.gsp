<%@ page import="thepieuvre.iknowwhatyoudidlastweek.organization.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="member.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${memberInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="member.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${memberInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${memberInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="member.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${memberInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="member.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${memberInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="member.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${memberInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="member.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${memberInstance?.firstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="member.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${memberInstance?.lastname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'organization', 'error')} required">
	<label for="organization">
		<g:message code="member.organization.label" default="Organization" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organization" name="organization.id" from="${thepieuvre.iknowwhatyoudidlastweek.organization.Organization.list()}" optionKey="id" required="" value="${memberInstance?.organization?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="member.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${memberInstance?.passwordExpired}" />

</div>

