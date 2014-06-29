<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="t" uri="http://myfaces.apache.org/tomahawk"%>

<f:view>
	<t:saveState value="#{calendarBean}" />
	<h:form>
		<h:outputText value="view@tomahawk" />

		<t:inputCalendar monthYearRowClass="yearMonthHeader"
			weekRowClass="weekHeader" currentDayCellClass="currentDayCell"
			value="#{calendarBean.firstDate}" />
	</h:form>
</f:view>
