<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%! String title = "Angemeldet"; %>
<%@include file="../include/head.jsp"%>

<body>
	<div id="seite">
		<%@include file="../include/header.jsp"%>

		<section>

			<article>
				<h1><%=title %></h1>
				<p class="meldung">Sie sind nun angemeldet.</p>
				<p>	<a href="<%=request.getContextPath()%>/benutzer_konto/konto.jsp">> Zu meinem Konto</a>
					<br />
					<br />
					<a href="<%=request.getContextPath()%>/flug/finden.jsp">> Einen Flug finden</a>
				</p>
					
			</article>
			
			<%@include file="/include/nav.jsp"%>

		</section>

		<%@include file="/include/footer.jsp"%>

	</div>
</body>
</html>
