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
		<section><h3>{{ frettir[0][0] }}</h3></section>
		<section class="pd2"><h3>nýustu fréttir</h3></section>
		<section><img src="/static/mynd0.jpg"></section>
		<section>
				<ul>
					% cnt = 0;
					% for i in frettir:
						<li><a href="/frett/{{ cnt }}">{{ i[0] }}</a></li>
						% cnt += 1
					% end
				</ul>
		</section>
	</div>
	%include('fotur.tpl')
</body>
</html>