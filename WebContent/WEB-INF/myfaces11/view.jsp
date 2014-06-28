<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<f:view>
	<h:form>
		<h:outputText value="view@myfaces11" />
		<br />
		<h:outputText value="#{sessionBean.str}" />
		<hr />
		<h:inputText value="#{sessionBean.str}" />
		<h:commandButton action="setStr" value="SetStr" />
		<hr />
		<h:commandLink action="#{sessionBean.plus}" value="plus" />
		<h:commandLink action="#{sessionBean.minus}" value="minus" />
		<br />
		<h:outputText value="#{sessionBean.num}" />
	</h:form>
</f:view>
