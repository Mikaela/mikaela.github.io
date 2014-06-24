<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<!-- <meta http-equiv="refresh" content="60" /> -->
<meta name="description" content="This is simple PHP script to convert email address into Libravatar link and show the result. This is inspired by those which inspired gravatar.php and gravatar.php itself." />
<title>Email --> Libravatar</title>
</head>
<body>

<p>
<form action="libravatar.php" method="post">
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

// Do nothing if our md5 is an empty string!
if($md5email != "d41d8cd98f00b204e9800998ecf8427e") {

echo "<p>md5<br> $md5email</p>";

echo "<p>Link<br>";
$libravatar = "https://seccdn.libravatar.org/avatar/$md5email.jpg";
echo "$libravatar</p>";
echo "<p>";
echo "<img src=$libravatar>";
echo "</p>";
}

echo '<hr/>
<p><a href="https://github.com/Mkaysi/mkaysi.github.io/blob/master/php/libravatar.php">Source: https://github.com/Mkaysi/mkaysi.github.io/blob/master/php/libravatar.php</a></p>
<hr/>'

?>
