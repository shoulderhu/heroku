<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<select class="form-control bg-dark text-white border-white"
        onchange="location.href='${param.href}' + this.value">
    <option value="0">Level 0</option>
    <c:forEach var="i" begin="1" end="${param.level}">
        <c:choose>
            <c:when test="${i == param.selected}">
                <option value="${i}" selected>
            </c:when>
            <c:otherwise>
                <option value="${i}">
            </c:otherwise>
        </c:choose>
        Level ${i - 1} &rarr; Level ${i}
        </option>
    </c:forEach>
</select>