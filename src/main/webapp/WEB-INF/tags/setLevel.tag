<%@tag pageEncoding="UTF-8" body-content="empty"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="level" required="true" rtexprvalue="true"%>

<div class="sl-item border-left border-white">
    <div class="sl-content">
        <a href="#">Level 0</a>
    </div>
</div>

<c:forEach var="i" begin="1" end="${level}">
    <div class="sl-item border-left border-white">
        <div class="sl-content">
            <a href="#">Level ${i - 1} &rarr; Level ${i}</a>
        </div>
    </div>
</c:forEach>