<%@tag pageEncoding="UTF-8" body-content="empty"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="active" required="true" rtexprvalue="true"%>
<%@attribute name="value" required="true" rtexprvalue="true"%>
<%@attribute name="href" required="true" rtexprvalue="true"%>

<c:choose>
    <c:when test="${active == value}">
        <a class="nav-item nav-link active" href="${href}">
    </c:when>
    <c:otherwise>
        <a class="nav-item nav-link" href="${href}">
    </c:otherwise>
</c:choose>