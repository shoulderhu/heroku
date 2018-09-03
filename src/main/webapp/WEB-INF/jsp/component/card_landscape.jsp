<div class="card flex-md-row border-white bg-dark">
    <div class="view overlay">
        <img class="card-img-top" src="${param.img}">
        <div class="mask rgba-white-slight"></div>
    </div>
    <div class="card-body">
        <strong class="card-title text-white">${param.title}</strong>
        <p class="card-text text-white">${param.text}</p>
        <jsp:include page="/WEB-INF/jsp/component/button_readMore.jsp">
            <jsp:param name="href" value="${param.href}"/>
        </jsp:include>
    </div>
</div>