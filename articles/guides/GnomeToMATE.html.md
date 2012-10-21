<!DOCTYPE html>
<html>
<head>
<meta name="description" content="What is what in GNOME and MATE" />
<meta name="keywords" content="GNOME,MATE," />
<meta name="author" content="Mika Suomalainen" />
<meta charset="UTF-8" />
<link rel="canonical" href="http://mkaysi.github.com/articles/guides/GnomeToMATE.html">
<title>Moving from GNOME to MATE</title>
<link rel="stylesheet" type="text/css" href="../../tyyli.css" />
</head>
<body>
<hr/>
[Sitemap](../../sitemap/sitemap.html)

# What is what in MATE and GNOME.

<table border=1>
	<tr>
		<td>MATE</td>
		<td>GNOME</td>
		<td>What it is?</td>
	</tr>
	<tr>
		<td>Caja</td>
		<td>Nautilus</td>
		<td>File manager</td>
	</tr>
	<tr>
		<td>Pluma</td>
		<td>Gedit</td>
		<td>Text editor</td>
	</tr>
	<tr>
		<td>Eye of MATE</td>
		<td>Eye of GNOME</td>
		<td>Picture viewer</td>
	</tr>
		<tr>
		<td>Atril</td>
		<td>Evince</td>
		<td>Document viewer</td>
	</tr>
		<tr>
		<td>Engrampa</td>
		<td>File roller</td>
		<td>File extractor</td>
	</tr>
		<tr>
		<td>MATE Terminal</td>
		<td>GNOME Terminal</td>
		<td>Terminal emulator</td>
	</tr>
</table>

# Notice about aptitude

If you don't have aptitude installed, you can get it with

> apt-get install aptitude

as root or if you don't want to use it,

> alias aptitude=apt-get

# Removing GNOME versions.

If you want to remove GNOME versions, just run

> aptitude remove nautilus gedit eom evince file-roller gnome-terminal

as root.

# Removing MATE versions

If you want to remove MATE versions, just run

> aptitude remove caja mate-text-editor eom atril engrampa mate-terminal

as root.

# WARNING: You do everything on this page with your own risk.

# Sources

[MATE applicaltions]

Own experience with Linux since 2008.

[MATE applicaltions]:http://mate-desktop.org/applications/

</body>
</html>
