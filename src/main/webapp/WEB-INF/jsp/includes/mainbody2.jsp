<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://idinetwork.co.uk/taglibs/idinetwork" prefix="idi"%>
<c:if test="${not empty page}">
			<div class="post">
				<div class="header">
					<h1 id="pagetitle">${page.title}</h1>
					<div class="date"><a href="http://twitter.com/share?original_referer=http%3A%2F%2Fidinetwork-demo.appspot.com%2Fsite%2F${page.key}&text=IDINetwork%20Demo%20%7C%20${page.title}" target="_new"><img src="/static/images/twitter-logo.png" border="0"/></a><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fidinetwork-demo.appspot.com%2Fsite%2F${page.key}" target="_new"><img src="/static/images/facebook-logo.png" border="0"/></a></div>
				</div>
				<div class="content">
					${page.body}
				</div>			
				<div class="footer">
					<!--ul>
						<li class="printerfriendly"><a href="#">Printer Friendly</a></li>
						<li class="comments"><a href="#">Comments (18)</a></li>
						<li class="readmore"><a href="#">Read more</a></li>
					</ul-->
				</div>
			</div>
</c:if>
<c:if test="${not empty article}">
			<div class="post">
				<div class="header">
					<h1 id="pagetitle">${article.title}</h1>
					<div class="date"><a href="http://twitter.com/share?original_referer=http%3A%2F%2Fidinetwork-demo.appspot.com%2Fsite%2F${article.key}&text=IDINetwork%20Demo%20%7C%20${article.title}" target="_new"><img src="/static/images/twitter-logo.png" border="0"/></a><a href="http://www.facebook.com/sharer.php?u=http%3A%2F%2Fidinetwork-demo.appspot.com%2Fsite%2Farticle%2F${article.key}" target="_new"><img src="/static/images/facebook-logo.png" border="0"/></a></div>
				</div>
				<div class="content">
					<p>${article.copy}</p>
				</div>			
				<div class="footer">
					<!--ul>
						<li class="printerfriendly"><a href="#">Printer Friendly</a></li>
						<li class="comments"><a href="#">Comments (18)</a></li>
						<li class="readmore"><a href="#">Read more</a></li>
					</ul-->
				</div>
			</div>
</c:if>
<c:if test="${not empty page.tags}">
    <idi:articlesTag tags="${page.tags}" name="pageArticles"/>
	<!-- Text container -->
	<div class="content3-container line-box">
      <c:forEach items="${pageArticles}" var="article" varStatus="loopStatus">
	    <p>
	    	<span class="content-title-noshade-size3">${article.title}</span><br/>
			<!--p class="content-subtitle-noshade-size1">${article.intro}</p-->
			<c:out value="${fn:substring(article.copy,0,200)}"/>...<br/>
			&rsaquo;&rsaquo;&rsaquo;&nbsp;<a href="/site/article/${article.key}">read more ...</a>
		</p>
	  </c:forEach>		
    </div>
</c:if>