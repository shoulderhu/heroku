<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title></title>
    <jsp:include page="${initParam.html}/link.html"/>
</head>
<body>
    <jsp:include page="${initParam.layout}/header.jsp">
        <jsp:param name="active" value="index"/>
    </jsp:include>

    <jsp:include page="${initParam.layout}/footer.jsp"/>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>