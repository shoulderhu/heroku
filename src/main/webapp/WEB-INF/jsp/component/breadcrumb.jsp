<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<ol class="breadcrumb bg-dark btn-outline-white">
    <li class="breadcrumb-item"></li>
    <c:forEach var="item" items="${paramValues.item}">
        <c:set var="tmp" value="${item}" scope="request"/>
        <c:set var="href" value="${fn:toLowerCase(tmp)}"
               scope="request"/>
        <li class="breadcrumb-item">
            <a class="text-white align-middle"
               href="${initParam[href]}">${item}</a>
        </li>
    </c:forEach>
    <c:if test="${not empty param.level}">
        <li class="breadcrumb-item d-flex">
            <jsp:include page="select_level.jsp">
                <jsp:param name="level" value="${param.level}"/>
                <jsp:param name="selected" value="${param.selected}"/>
                <jsp:param name="href" value="${initParam[href]}"/>
            </jsp:include>
        </li>
    </c:if>
</ol>
