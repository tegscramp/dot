const express = require('express');
const app = express();
const port = 1234;

// static files
app.use(express.static('public'));

app.get('/', (req, res) => {
	res.send(
		`
		<html>
			<head>
				<meta charset="UTF-8">
				<title>Test page</title>
				<link rel="stylesheet" type="text/css" href="/all.css">
			</head>
			<body>
				<h1>Test page!</h1>
			</body>
		</html>
		`
	);
});

app.listen(port, () => {
	console.log(`Server is running ... http://localhost:${port}`);
});
