
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="UTF-8" />
<title>Air Ticket | Anmelden</title>
<link rel="stylesheet" href="./css/style.css" />
</head>

<body>
	<div id="seite">

		<header>
			<h1>AirTicket</h1>
			<div id="login">
				<form action="anmelden.jsp" method="post">
					<fieldset>
						<label for="email">E-Mail</label>
						<input type="email" id="email" name="email" required="required" />
						<label for="passwort">Passwort</label>
						<input type="password" id="passwort" name="passwort" required="required" />
						<input type="submit" id="submit_login" name="login" value="Anmelden" class="button" />
					</fieldset>
				</form>
			</div>
		</header>

		<section>
			<article>
				<h1>Anmelden</h1>
				<form action="benutzer_angemeldet.html" method="post">
					<fieldset>
						<legend>Logindaten</legend>
						<label for="email2">E-Mail</label>
						<input type="email" id="email2" name="email" required="required" />
						<label for="passwort2">Passwort</label>
						<input type="password" id="passwort2" name="passwort" required="required" />
					</fieldset>
					<input type="submit" id="submit_login2" name="login" value="Anmelden" class="button" />
				</form>

				<form method="POST" action="j_security_check">
					<table>
						<tr>
							<td colspan="2">Login to the Tomcat-Demo application:</td>
						</tr>
						<tr>
							<td>Name:</td>
							<td><input type="text" name="j_username" /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="j_password"/ ></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="Go" /></td>
						</tr>
					</table>
				</form>


			</article>

			<nav>
				<ul>
					<li><a href="index.html">Flug finden</a></li>
					<!-- IF !Angemeldet -->
					<li><a href="benutzer_anmelden.html">Anmelden</a></li>
					<li><a href="benutzer_registrieren.html">Registrieren</a></li>
					<!-- IF !Else -->
					<li><a href="benutzer_konto.html">Mein Konto</a></li>
				</ul>
			</nav>

		</section>

		<footer>
			<ul>
				<li><a href="kontakt.html">Kontakt&nbsp;|&nbsp;</a></li>
				<li><a href="sitemap.html">Sitemap&nbsp;|&nbsp;</a></li>
				<li><a href="impressum.html">Impressum</a></li>
			</ul>
		</footer>

	</div>
</body>
</html>
