<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Imputation" %>



<div class="fieldcontain ${hasErrors(bean: imputationInstance, field: 'impute', 'error')} required">
	<label for="impute">
		<g:message code="imputation.impute.label" default="Impute" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="impute" value="${fieldValue(bean: imputationInstance, field: 'impute')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: imputationInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="imputation.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${thepieuvre.iknowwhatyoudidlastweek.organization.Member.list()}" optionKey="id" required="" value="${imputationInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imputationInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="imputation.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${thepieuvre.iknowwhatyoudidlastweek.core.Task.list()}" optionKey="id" required="" value="${imputationInstance?.task?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imputationInstance, field: 'week', 'error')} required">
	<label for="week">
		<g:message code="imputation.week.label" default="Week" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="week" name="week.id" from="${thepieuvre.iknowwhatyoudidlastweek.core.Week.list()}" optionKey="id" required="" value="${imputationInstance?.week?.id}" class="many-to-one"/>

</div>

