<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Hasarfréttir</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include('haus.tpl')


	<div class="row">
		<section><h3>{{ frett[0] }}</h3></section>
		<section><h3><!--autt--></h3></section>
		<section><img src="/static/mynd{{nr}}.jpg"></section>
		<section class="pd2">
				<p>{{ frett[1] }}</p>
				<p>Höfundur : {{ frett[2] }}</p>
				<h6><a href="/b">Aftur á Forsíðu</a></h6>
		</section>
	</div>


	%include('fotur.tpl')
</body>
</html>