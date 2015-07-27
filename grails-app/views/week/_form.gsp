<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Week" %>



<div class="fieldcontain ${hasErrors(bean: weekInstance, field: 'snippet', 'error')} required">
	<label for="snippet">
		<g:message code="week.snippet.label" default="Snippet" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="snippet" cols="40" rows="5" maxlength="2048" required="" value="${weekInstance?.snippet}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: weekInstance, field: 'week', 'error')} required">
	<label for="week">
		<g:message code="week.week.label" default="Week" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="week" type="number" value="${weekInstance.week}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: weekInstance, field: 'imputations', 'error')} ">
	<label for="imputations">
		<g:message code="week.imputations.label" default="Imputations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${weekInstance?.imputations?}" var="i">
    <li><g:link controller="imputation" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="imputation" action="create" params="['week.id': weekInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'imputation.label', default: 'Imputation')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: weekInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="week.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${thepieuvre.iknowwhatyoudidlastweek.organization.Member.list()}" optionKey="id" required="" value="${weekInstance?.member?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: weekInstance, field: 'year', 'error')} required">
	<label for="year">
		<g:message code="week.year.label" default="Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="year" type="number" value="${weekInstance.year}" required=""/>

</div>

