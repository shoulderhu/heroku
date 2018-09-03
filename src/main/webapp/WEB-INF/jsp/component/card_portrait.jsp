<div class="card border-white bg-dark">
    <div class="view overlay">
        <img class="card-img-top" src="${param.img}">
        <div class="mask rgba-white-slight"></div>
    </div>
    <div class="card-body">
        <h5 class="card-title">
            <a class="text-white" href="${param.href}">
                <b>${param.title}</b>
            </a>
        </h5>
        <hr class="hr-light">
        <p class="card-text text-white">
            ${param.text}
        </p>
        <jsp:include page="/WEB-INF/jsp/component/button_readMore.jsp">
            <jsp:param name="href" value="${paramValues.href[1]}"/>
        </jsp:include>
    </div>
</div>