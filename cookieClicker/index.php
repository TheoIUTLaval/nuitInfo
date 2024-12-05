<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cookie Clicker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        #cookie {
            width: 200px;
            cursor: pointer;
        }
        #score {
            font-size: 2em;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Cookie Clicker</h1>
    <img id="cookie" src="cookie.png" alt="Cookie">
    <div id="score">0</div>

    <script>
        let score = 0;
        const cookie = document.getElementById('cookie');
        const scoreDisplay = document.getElementById('score');

        cookie.addEventListener('click', () => {
            score++;
            scoreDisplay.textContent = score;
        });
    </script>
</body>
</html>