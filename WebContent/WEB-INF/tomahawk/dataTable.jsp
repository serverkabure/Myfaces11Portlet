<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>

<link href='css/tree.css' type='text/css' />

<f:view>
	<h:form>
		<h:outputText value="view@tomahawk" />

		<t:dataTable styleClass="portlet-section-header"
			headerClass="portlet-section-subheader"
			footerClass="portlet-section-footer" var="car" value="#{list.cars}"
			sortColumn="#{list.sort}" sortAscending="#{list.ascending}"
			preserveDataModel="true" preserveSort="true">

			<f:facet name="header">
				<h:outputText value="(header table)" />
			</f:facet>

			<f:facet name="footer">
				<h:outputText value="(footer table)" />
			</f:facet>

			<h:column>
				<f:facet name="header">
					<t:commandSortHeader columnName="type" arrow="true">
						<h:outputText value="type" />
					</t:commandSortHeader>
				</f:facet>
				<h:outputText value="#{car.type}" />
				<f:facet name="footer">
					<h:outputText id="ftr1" value="(footer col1)" />
				</f:facet>
			</h:column>

			<h:column>
				<f:facet name="header">
					<t:commandSortHeader columnName="color" arrow="true">
						<h:outputText value="color" />
					</t:commandSortHeader>
				</f:facet>
				<h:outputText value="#{car.color}" />
				<f:facet name="footer">
					<h:outputText id="ftr2" value="(footer col2)" />
				</f:facet>
			</h:column>

		</t:dataTable>

	</h:form>
</f:view>
