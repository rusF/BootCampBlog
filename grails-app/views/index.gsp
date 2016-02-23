<!DOCTYPE html>
<head></head>
<body>
	<twitterAuth:button />
	<sec:ifLoggedIn>
		<div class="message">Authenticated</div>
    	Hello <sec:username />!
	</sec:ifLoggedIn>
	<sec:ifNotLoggedIn>
		<div class="message">Not authenticated</div>
		<twitterAuth:button />
	</sec:ifNotLoggedIn>
</body>