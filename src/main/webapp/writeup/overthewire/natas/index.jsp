<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title>Natas</title>
    <jsp:include page="${initParam.html}/link.html"/>
</head>
<body>
    <jsp:include page="${initParam.lyt}/header.jsp">
        <jsp:param name="active" value="writeup"/>
    </jsp:include>
    <div class="container" style="margin-top: 75px">
        <jsp:include page="${initParam.cpnt}/breadcrumb.jsp">
            <jsp:param name="item" value="Writeup"/>
            <jsp:param name="item" value="OverTheWire"/>
            <jsp:param name="item" value="Natas"/>
            <jsp:param name="level" value="33"/>
            <jsp:param name="selected" value="${param.level}"/>
        </jsp:include>
        <c:choose>
            <c:when test="${empty param.level}">
                <jsp:include page="natas0.jsp"/>
            </c:when>
            <c:otherwise>
                <jsp:include page="natas${param.level}.jsp"/>
            </c:otherwise>
        </c:choose>
        <jsp:include page="${initParam.lyt}/footer.jsp"/>
    </div>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>