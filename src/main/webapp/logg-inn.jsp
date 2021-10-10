

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="css/main.css">
  <title>AMV | Logg inn</title>
</head>
<body>
  <section class="hero">
    <h1>AMV</h1>
    <form action="">
      <br>
      <label>Mobilnummer</label>
      <input type="tel" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required autofocus>
      <br>
      <label>Passord</label>
      <input type="password" required>
      <br>
        <button class="btn" type="submit">Logg inn</button>
    </form>
  </section>
</body>
</html>