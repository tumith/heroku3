<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Þversumma</title>
</head>
<body>
	% summa = 0
	%for i in kt:
		% summa = summa + int(i)
	% end
	<h2>Þversumma</h2>
	<p>Þversumma kennitölunar {{ kt }} er <b>{{ summa }}</b></p>

</body>
</html>