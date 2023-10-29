<!--
@author D & T Solutions
-->

<html>

<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Cube CBN FINA System - Admin Console Create User</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


<!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">


<meta name="Microsoft Theme" content="poetic 1111, default">
<script>
function validateEntry()
{
	if(document.forms[0].T1.value.length<1 || document.forms[0].T2.value.length<1 || document.forms[0].T3.value.length<1)
	{
		alert("Please fill all entries!");
		return false;
	}
	else if(document.forms[0].T2.value!=document.forms[0].T3.value)
	{
		alert("Password and Re-password are not same\nPlease verify")
		document.forms[0].T2.value="";
		document.forms[0].T3.value="";
		return false;
	}
	else
		return true;
}
</script>
</head>

<body>
<p><b><font size="4">Admin Console</font></b></p>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%">
  <tr>
    <td width="33%"><a href="adminConsole.jsp">Admin Home</a> | 
    <a href="adminConsoleRemove.jsp">Remove User</a></td>
    <td width="33%">
<p align="center"><font size="4"><b>Create User</b></font></p>
    </td>
    <td width="34%">
    <p align="right"><a href="" onclick="window.close()">Close Window</a></td>
  </tr>
</table>
<hr>
<form method="POST" action="adminConsoleProcessAdd.jsp">
<div align="center">
    <center>
    <table border="0" cellpadding="2" style="border-collapse: collapse">
      <tr>
        <td align="right"><b>
        <font title="Allows you specify the corresponding values for each CBN item per report">
        User Name:</font></b></td>
        <td><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td align="right"><b>
        <font title="Allows you specify the corresponding values for each CBN item per report">
        Password:</font></b></td>
        <td><input type="password" name="T2" size="20"></td>
      </tr>
      <tr>
        <td align="right"><b>
        <font title="Allows you specify the corresponding values for each CBN item per report">
        Re-Password:</font></b></td>
        <td><input type="password" name="T3" size="20"></td>
      </tr>
      <tr>
        <td align="right"><input type="submit" value="Submit" name="B1" onclick="return validateEntry()"></td>
        <td><input type="reset" value="Reset" name="B2"></td>
      </tr>
    </table>
    </center>
  </div>
<hr>
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>

</body>

</html>