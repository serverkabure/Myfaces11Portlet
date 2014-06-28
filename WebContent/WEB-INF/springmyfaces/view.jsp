<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<f:view>
	<h:form>
		<h:outputText value="view@springmyfaces" />
		<br />
		<h:outputText value="#{springBean.str}" />
		<hr />
		<h:inputText value="#{springBean.str}" />
		<h:commandButton action="setStr" value="SetStr" />
		<hr />
		<h:commandLink action="#{springBean.plus}" value="plus" />
		<h:commandLink action="#{springBean.minus}" value="minus" />
		<br />
		<h:outputText value="#{springBean.num}" />
	</h:form>
</f:view>
