<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title>Home</title>
    <jsp:include page="${initParam.html}/link.html"/>
</head>
<body>
    <jsp:include page="${initParam.lyt}/header.jsp">
        <jsp:param name="active" value="index"/>
    </jsp:include>

    <jsp:include page="${initParam.lyt}/footer.jsp"/>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>