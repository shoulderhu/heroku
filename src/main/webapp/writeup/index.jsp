<!doctype html>
<html lang="en">
<head>
    <jsp:include page="${initParam.html}/meta.html"/>
    <title>Writeup</title>
    <jsp:include page="${initParam.html}/link.html"/>
</head>
<body>
    <jsp:include page="${initParam.lyt}/header.jsp">
        <jsp:param name="active" value="writeup"/>
    </jsp:include>
    <div class="container" style="margin-top: 75px">
        <jsp:include page="${initParam.cpnt}/breadcrumb.jsp">
            <jsp:param name="item" value="Writeup"/>
        </jsp:include>
        <div class="row">
            <div class="col" style="margin-top: 10px">
                <jsp:include page="${initParam.cpnt}/card_portrait.jsp">
                    <jsp:param name="img" value="${initParam.img}/img75.jpg"/>
                    <jsp:param name="title" value="OverTheWire"/>
                    <jsp:param name="text" value="The wargames offered by the OverTheWire community can help you to
                    learn and practice security concepts in the form of fun-filled games."/>
                    <jsp:param name="href" value="http://overthewire.org/wargames/"/>
                    <jsp:param name="href" value="${initParam.overthewire}"/>
                </jsp:include>
            </div>
            <div class="col" style="margin-top: 10px">
                <jsp:include page="${initParam.cpnt}/card_portrait.jsp">
                    <jsp:param name="img" value="${initParam.img}/img78.jpg"/>
                    <jsp:param name="title" value="Vulnhub"/>
                    <jsp:param name="text" value="To provide materials that allows anyone to gain practical 'hands-on'
                    experience in digital security, computer software & network administration."/>
                    <jsp:param name="href" value="https://www.vulnhub.com/"/>
                    <jsp:param name="href" value="${initParam.vulnhub}"/>
                </jsp:include>
            </div>
        </div>
        <jsp:include page="${initParam.lyt}/footer.jsp"/>
    </div>
    <jsp:include page="${initParam.html}/script.html"/>
</body>
</html>