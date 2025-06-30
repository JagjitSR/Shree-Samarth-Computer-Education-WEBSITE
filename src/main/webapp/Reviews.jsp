<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS.css">
<style>
.marquee-wrapper {
    overflow: hidden;
    width: 100%;
    background: white;
    padding: 10px 0;
}

.marquee-inner {
    width: 100%;
}

.marquee-track {
    display: flex;
    animation: scroll-left 40s linear infinite;
    width: max-content;
}

.review-card {
    flex: 0 0 auto;
    margin: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    min-width: 250px;
    max-width: 500px;
    background-color: #fff;
    border-radius: 5px;
    text-align: center;
}

.stars {
    color: gold;
    font-size: 18px;
}

@keyframes scroll-left {
    0% {
        transform: translateX(0%);
    }
    100% {
        transform: translateX(-50%);
    }
}
.NoGrid {
  padding: 15px;
}
</style>
</head>
<body>

<div class="NoGrid">
    <h2 style="text-align: center;">Reviews from our Students</h2>

    <div class="marquee-wrapper">
        <div class="marquee-inner">
            <div class="marquee-track">
                <!-- Duplicate review list twice for infinite scroll -->
                <c:forEach var="i" begin="1" end="2">
                    <c:forEach var="r" items="${list}">
                        <div class="review-card">
                            <h4>${r.rName}</h4>
                            <p>${r.rMessage}</p>
                            <div class="stars">
                                <c:forEach begin="1" end="5" var="j">
                                    <c:choose>
                                        <c:when test="${j <= r.rRating}">&#9733;</c:when>
                                        <c:otherwise><span style="color: #ccc;">&#9733;</span></c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </div>
                        </div>
                    </c:forEach>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

</body>
</html>