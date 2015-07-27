<%@ page import="thepieuvre.iknowwhatyoudidlastweek.core.Tag" %>



<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'internalCode', 'error')} required">
	<label for="internalCode">
		<g:message code="tag.internalCode.label" default="Internal Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="internalCode" required="" value="${tagInstance?.internalCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tagInstance, field: 'tag', 'error')} required">
	<label for="tag">
		<g:message code="tag.tag.label" default="Tag" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tag" required="" value="${tagInstance?.tag}"/>

</div>

