<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title>Vulnhub</title>
    <jsp:include page="${initParam.html}/link.html"/>
</head>
<body>
    <jsp:include page="${initParam.lyt}/header.jsp">
        <jsp:param name="active" value="writeup"/>
    </jsp:include>
    <div class="container" style="margin-top: 100px">
        <jsp:include page="${initParam.cpnt}/breadcrumb.jsp">
            <jsp:param name="item" value="Writeup"/>
            <jsp:param name="item" value="Vulnhub"/>
        </jsp:include>

        <jsp:include page="${initParam.lyt}/footer.jsp"/>
    </div>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>