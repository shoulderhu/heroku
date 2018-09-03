<%@taglib prefix="my" tagdir="/WEB-INF/tags" %>

<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title>OverTheWire</title>
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
        </jsp:include>
        <div class="row mb-2">
            <div class="col-md-6" style="margin-top: 10px">
                <jsp:include page="${initParam.cpnt}/card_landscape.jsp">
                    <jsp:param name="img" value="${initParam.img}/img74.jpg"/>
                    <jsp:param name="title" value="Bandit"/>
                    <jsp:param name="text" value="Bandit teaches the basics needed to be able to play other wargames."/>
                    <jsp:param name="href" value="${initParam.bandit}0"/>
                </jsp:include>
            </div>
            <div class="col-md-6" style="margin-top: 10px">
                <jsp:include page="${initParam.cpnt}/card_landscape.jsp">
                    <jsp:param name="img" value="${initParam.img}/img81.jpg"/>
                    <jsp:param name="title" value="Natas"/>
                    <jsp:param name="text" value="Natas teaches the basics of serverside web-security. &nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"/>
                    <jsp:param name="href" value="${initParam.natas}0"/>
                </jsp:include>
            </div>
        </div>
        <jsp:include page="${initParam.lyt}/footer.jsp"/>
    </div>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>