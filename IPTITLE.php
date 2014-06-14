<?php

header("Content-Type: text/plain; charset=utf-8");

$IP = $_SERVER['REMOTE_ADDR'];

echo '<!DOCTYPE html>';
echo '<head>';
echo '<meta charset="UTF-8" />';
echo "<title>$IP</title>";
echo '</head>';
echo '</html>';
?>
