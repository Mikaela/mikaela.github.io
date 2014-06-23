<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="This is simple PHP script to convert email address into Gravatar link and show the result. This is inspired by asaph/gravatar/ and the documentation it linked to and I wanted to see could I do this by myself too." />
<title>Email --> Gravatar</title>
</head>
<body>

<p>
<form action="gravatar.php" method="post">
Email address: <input type="text" name="email">
<input type="submit">
</form>
</p>

</body>
</html>

<?php

$email = trim( $_REQUEST["email"] ); 

echo "<p>Email<br> $email</p>";

$email = strtolower( $email ); 

$md5email = md5( $email );

echo "<p>md5<br> $md5email</p>";

echo "<p>Link<br>";
$gravatar = "https://gravatar.com/avatar/$md5email.jpg";
echo "$gravatar</p>";
echo "<p>";
echo "<img src=$gravatar>";
echo "</p>";
?>
