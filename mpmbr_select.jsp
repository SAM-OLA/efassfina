<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
	int cn=0;
    String Code = "";
	double Value = 0;
	
	int flag1=0;
	int flag2=0;
	int flag3=0;
	int flag4=0;
	int flag5=0;
	int flag6=0;
	int flag7=0;
	int flag8=0;
	int flag9=0;
	int flag10=0;
	int flag11=0;
	int flag12=0;
	int flag13=0;
	int flag14=0;
	int flag15=0;
	int flag16=0;
	int flag17=0;
	int flag18=0;
	int flag19=0;
	int flag20=0;
	int flag21=0;
	int flag22=0;
	int flag23=0;
	int flag24=0;
	int flag25=0;
	int flag26=0;
	int flag27=0;
	int flag28=0;
	int flag29=0;
	int flag30=0;
	int flag31=0;
	int flag32=0;
	int flag33=0;
	int flag34=0;
	int flag35=0;
	int flag36=0;
	int flag37=0;
	int flag38=0;
	int flag39=0;
	int flag40=0;
	int flag41=0;	
	int flag42=0;
	int flag43=0;
	int flag44=0;	


	try
	{
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select Code,Description,Value from mpmbr300Data");
		while(rs.next())
		{
			Code = rs.getString(1).trim();
			Value = Double.parseDouble(rs.getString(3).trim());
			if(Code.equals("10180") && Value != 0)
			{
				flag1 =1;
			}
			if(Code.equals("10210") && Value != 0)
			{
				flag2 =1;
			}
			if(Code.equals("10220") && Value != 0)
			{
				flag3 =1;
			}
			if(Code.equals("10270") && Value != 0)
			{
				flag4 =1;
			}
			if(Code.equals("10310") && Value != 0)
			{
				flag5 =1;
			}
			if(Code.equals("10330") && Value != 0)
			{
				flag6 =1;
			}
			if(Code.equals("10360") && Value != 0)
			{
				flag7 =1;
			}
			if(Code.equals("10450") && Value != 0)
			{
				flag8 =1;
			}
			if(Code.equals("10460") && Value != 0)
			{
				flag9 =1;
			}
			if(Code.equals("10470") && Value != 0)
			{
				flag10 =1;
			}
			if(Code.equals("10610") && Value != 0)
			{
				flag11 =1;
			}
			if(Code.equals("10730") && Value != 0)
			{
				flag12 =1;
			}
			if(Code.equals("10860") && Value != 0)
			{
				flag13 =1;
			}
			if(Code.equals("10980") && Value != 0)
			{
				flag14 =1;
			}
			if(Code.equals("11100") && Value != 0)
			{
				flag15 =1;
			}
			if(Code.equals("11220") && Value != 0)
			{
				flag16 =1;
			}
			if(Code.equals("11340") && Value != 0)
			{
				flag17 =1;
			}
			if(Code.equals("11460") && Value != 0)
			{
				flag18 =1;
			}
			if(Code.equals("11550") && Value != 0)
			{
				flag19 =1;
			}
			if(Code.equals("11840") && Value != 0)
			{
				flag20 =1;
			}
			if(Code.equals("11850") && Value != 0)
			{
				flag21 =1;
			}
			if(Code.equals("11990") && Value != 0)
			{
				flag22 =1;
			}
			if(Code.equals("12100") && Value != 0)
			{
				flag23 =1;
			}
			if(Code.equals("12170") && Value != 0)
			{
				flag24 =1;
			}
			if(Code.equals("12200") && Value != 0)
			{
				flag25 =1;
			}
			if(Code.equals("12240") && Value != 0)
			{
				flag26 =1;
			}
			if(Code.equals("12500") && Value != 0)
			{
				flag27 =1;
			}

			if(Code.equals("20170") && Value != 0)
			{
				flag28 =1;
			}
			if(Code.equals("20220") && Value != 0)
			{
				flag29 =1;
			}
			if(Code.equals("20240") && Value != 0)
			{
				flag30 =1;
			}
			if(Code.equals("20250") && Value != 0)
			{
				flag31 =1;
			}
			if(Code.equals("20300") && Value != 0)
			{
				flag32 =1;
			}
			if(Code.equals("20310") && Value != 0)
			{
				flag33 =1;
			}
			if(Code.equals("20320") && Value != 0)
			{
				flag34 =1;
			}
			if(Code.equals("20330") && Value != 0)
			{
				flag35 =1;
			}
			if(Code.equals("20410") && Value != 0)
			{
				flag36 =1;
			}
			if(Code.equals("20420") && Value != 0)
			{
				flag37 =1;
			}
			if(Code.equals("20430") && Value != 0)
			{
				flag38 =1;
			}
			if(Code.equals("20450") && Value != 0)
			{
				flag39 =1;
			}
			if(Code.equals("20470") && Value != 0)
			{
				flag40 =1;
			}
			if(Code.equals("20480") && Value != 0)
			{
				flag41 =1;
			}
			if(Code.equals("20500") && Value != 0)
			{
				flag42 =1;
			}
			if(Code.equals("20710") && Value != 0)
			{
				flag43 =1;
			}
			if(Code.equals("20850") && Value != 0)
			{
				flag44 =1;
			}

		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	System.out.println("Flag 1 = "+flag1);
		
%>

<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>Monthly - Offsite Examination Request From PMBs - Select  Report(s) to generate</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
  function doClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if ( ! form.elements[i].checked ) { form.elements[i].click();
			}
		}
    }
	return true;
  }

  function doUnClickAll(form) {
	for (var i = 0; i < form.elements.length; i++) {
		if ( form.elements[i].type == "checkbox" ) {
			if (  form.elements[i].checked ) { form.elements[i].checked = false;
			}
		}
	}
	return true;
  }
</SCRIPT>
<body>

<div align="center">
  <center>
<jsp:include flush="true" page="header.jsp"/>
</td>
    </tr>
	<br>
  
    <tr>
      <td height="300" align="center">
        <div align="center">
          <p>&nbsp;</p>
          <table border="1" cellpadding="3" style="border-collapse: collapse" bordercolor="#111111" width="956" >
    <form method="POST" action="generate_mpmbr.jsp">
    <input type="hidden" name="mp100" value="0">
    <input type="hidden" name="mp300" value="0">
    <input type="hidden" name="mp300DEM" value="0">
    <input type="hidden" name="mp302" value="0">
    <input type="hidden" name="mp304" value="0">
    <input type="hidden" name="mp306" value="0">
    <input type="hidden" name="mp308" value="0">
    <input type="hidden" name="mp310" value="0">
    <input type="hidden" name="mp312" value="0">
    <input type="hidden" name="mp314" value="0">
    <input type="hidden" name="mp316A" value="0">
    <input type="hidden" name="mp316B" value="0">
    <input type="hidden" name="mp316C" value="0">
    <input type="hidden" name="mp318A" value="0">
    <input type="hidden" name="mp318B" value="0">
    <input type="hidden" name="mp318C" value="0">
    <input type="hidden" name="mp320A" value="0">
    <input type="hidden" name="mp320B" value="0">
    <input type="hidden" name="mp320C" value="0">
    <input type="hidden" name="mp322A" value="0">
    <input type="hidden" name="mp322B" value="0">
    <input type="hidden" name="mp322C" value="0">
    <input type="hidden" name="mp324A" value="0">
    <input type="hidden" name="mp324B" value="0">
    <input type="hidden" name="mp324C" value="0">
    <input type="hidden" name="mp326A" value="0">
    <input type="hidden" name="mp326B" value="0">
    <input type="hidden" name="mp326C" value="0">
    <input type="hidden" name="mp328A" value="0">
    <input type="hidden" name="mp328B" value="0">
    <input type="hidden" name="mp328C" value="0">
    <input type="hidden" name="mp330A" value="0">
    <input type="hidden" name="mp330B" value="0">
    <input type="hidden" name="mp330C" value="0">
    <input type="hidden" name="mp332A" value="0">
    <input type="hidden" name="mp332B" value="0">
    <input type="hidden" name="mp332C" value="0">
    <input type="hidden" name="mp334" value="0">
    <input type="hidden" name="mp336" value="0">
    <input type="hidden" name="mp338" value="0">
    <input type="hidden" name="mp340" value="0">
    <input type="hidden" name="mp342" value="0">
    <input type="hidden" name="mp344" value="0">
    <input type="hidden" name="mp346" value="0">
    <input type="hidden" name="mp348" value="0">
    <input type="hidden" name="mp350" value="0">
    <input type="hidden" name="mp351" value="0">
    <input type="hidden" name="mp352" value="0">
    <input type="hidden" name="mp353" value="0">
    <input type="hidden" name="mp354" value="0">
    <input type="hidden" name="mp356" value="0">
    <input type="hidden" name="mp358" value="0">
    <input type="hidden" name="mp360" value="0">
    <input type="hidden" name="mp362" value="0">
    <input type="hidden" name="mp364" value="0">
    <input type="hidden" name="mp366" value="0">
    <input type="hidden" name="mp368" value="0">
    <input type="hidden" name="mp370" value="0">
    <input type="hidden" name="mp372" value="0">
    <input type="hidden" name="mp374" value="0">
    <input type="hidden" name="mp376" value="0">
    <input type="hidden" name="mp378" value="0">
    <input type="hidden" name="mp380A" value="0">
    <input type="hidden" name="mp380B" value="0">
    <input type="hidden" name="mp380C" value="0">
    <input type="hidden" name="mp382" value="0">
    <input type="hidden" name="mp383" value="0">
    <input type="hidden" name="mp384" value="0">
    <input type="hidden" name="mp386" value="0">
    <input type="hidden" name="mp388" value="0">
    <input type="hidden" name="mp390" value="0">
    <input type="hidden" name="mp392" value="0">
    <input type="hidden" name="mp394" value="0">
    <input type="hidden" name="mp396" value="0">
    <input type="hidden" name="mp398" value="0">
    <input type="hidden" name="mp400" value="0">
    <input type="hidden" name="mp402" value="0">
    <input type="hidden" name="mp404" value="0">
    <input type="hidden" name="mp406" value="0">
    <input type="hidden" name="mp408" value="0">
    <input type="hidden" name="mp410" value="0">
    <input type="hidden" name="mp412" value="0">
    <input type="hidden" name="mp1000" value="0">
    <input type="hidden" name="mp1001" value="0">
    <input type="hidden" name="mp1002" value="0">
    
 
		<tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma" size="2"><b>NOTE</b></font></td>
            <td valign="top" align="center" bgcolor="#F5F5F5"><font face="Tahoma" size="4"><b><u>Enter Report Date As At : </u></b><select name=reportdate><option value=''>---Select Period---</option>
		<option value='M01'>January</option>
		<option value='M02'>February</option>
		<option value='M03'>March</option>
		<option value='M04'>April</option>
		<option value='M05'>May</option>
		<option value='M06'>June</option>
		<option value='M07'>July</option>
		<option value='M08'>August</option>
		<option value='M09'>September</option>
		<option value='M10'>October</option>
		<option value="M11">November</option>
		<option value='M12'>December</option>
		</select></font></td>
          </tr>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#F5F5F5">
            <font face="Tahoma"><input type="checkbox" name="CheckAll" value="ON" onClick="if (this.checked){doClickAll(this.form)} else {doUnClickAll(this.form)}"></font></td>
            <td valign="top" bgcolor="#F5F5F5"><font face="Tahoma" size="2">Select All</font></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m100" value="ON" onClick="if (this.checked) {this.form.mp100.value='1'} else {this.form.mp100.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><b><font face="Tahoma" size="2">
			MPMBR 100 - Schedule of Memorandum Items</font></b></td><td><a href='mpmbr100.jsp'>MPMBR100</a></td>
          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m300" value="ON" onClick="if (this.checked) {this.form.mp300.value='1'} else {this.form.mp300.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><b><font face="Tahoma" size="2">MPMBR 300 - Statement of Financial Position</font></b></td><td><a href='mpmbr300.jsp'>MPMBR300</a></td>

          </tr>
	  <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m300DEM" value="ON" onClick="if (this.checked) {this.form.mp300DEM.value='1'} else {this.form.mp300DEM.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><b><font face="Tahoma" size="2">MPMBR 300A - Statement of Financial Position(DEMAND DEPOSIT)</font></b></td><td></td>

          </tr>

          <%
	   if(flag1==1)
	   {
		  %>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m302" value="ON" onClick="if (this.checked) {this.form.mp302.value='1'} else {this.form.mp302.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><b><font face="Tahoma" size="2">MPMBR 302 - Schedule of Other Balances Held with CBN / FMBN</font></b></td><td><a href='mpmbr302.jsp'>MPMBR302</a></td>
          </tr>
		<%
	   }
	else
	{
		%>

		  <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m302" value="ON" onClick="if (this.checked) {this.form.mp302.value='1'} else {this.form.mp302.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><b><font face="Tahoma" size="2">MPMBR 302 - Schedule of Other Balances Held with CBN / FMBN</font></b></td><td><a href='mpmbr302.jsp'>MPMBR302</a></td>
          </tr>
   		<%
		}
		%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m304" value="ON" onClick="if (this.checked) {this.form.mp304.value='1'} else {this.form.mp304.value='0'}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><b><font face="Tahoma" size="2">MPMBR 304 -Schedule of Balances Held with Banks in Nigeria</font></b></td><td><a href='mpmbr304.jsp'>MPMBR304</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m306" value="ON" onClick="if (this.checked) {this.form.mp306.value='1';} else {this.form.mp306.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><b><font face="Tahoma" size="2">MPMBR 306 - Schedule of Balances Held with Other PMBs / Financial Institutions</font></b></td><td><a href='mpmbr306.jsp'>MPMBR306</a></td>

          </tr>

<%
	   if(flag1==2)
	   {
%>
          <tr>
            <td valign="top" width="5%" align="center" bgcolor="#00FFFF">
            <font face="Tahoma"><input type="checkbox" name="m308" value="ON" onClick="if (this.checked) {this.form.mp308.value='1';} else {this.form.mp308.value='0';}"></font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 308 - Schedule of Balances Held with Banks Outside Nigeria</font></strong></td><td><a href='mpmbr308.jsp'>MPMBR308</a></td>

          </tr>
<%
	   }
else
{
%>
		<tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m308" value="ON" onClick="if (this.checked) {this.form.mp308.value='1';} else {this.form.mp308.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 308 - Schedule of Balances Held with Banks Outside Nigeria</font></strong></td><td><a href='mpmbr308.jsp'>MPMBR308</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag18==1)
	   {
%>

          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m310" value="ON" onClick="if (this.checked) {this.form.mp310.value='1';} else {this.form.mp310.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 310 - Schedule of Money at Call Held with Internal Banks</font></strong></td><td><a href='mpmbr310.jsp'>MPMBR310</a></td>

          </tr>
<%
	   }
else
{
%>
	 <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m310" value="ON" onClick="if (this.checked) {this.form.mp310.value='1';} else {this.form.mp310.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 310 - Schedule of Money at Call Held with Internal Banks</font></strong></td><td><a href='mpmbr310.jsp'>MPMBR310</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag19==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m312" value="ON" onClick="if (this.checked) {this.form.mp312.value='1';} else {this.form.mp312.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 312 - Schedule of Placements with Banks</font></strong></td><td><a href='mpmbr312.jsp'>MPMBR312</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m312" value="ON" onClick="if (this.checked) {this.form.mp312.value='1';} else {this.form.mp312.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 312 - Schedule of Placements with Banks</font></strong></td><td><a href='mpmbr312.jsp'>MPMBR312</a></td>
          </tr>
<%
		}
%>
	      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#00FFFF">
            <font face="Tahoma"><input type="checkbox" name="m314" value="ON" onClick="if (this.checked) {this.form.mp314.value='1';} else {this.form.mp314.value='0';}"></font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 314 - Schedule of Placements with Other PMBs / Financial Institutions</font></strong></td><td><a href='mpmbr314.jsp'>MPMBR314</a></td>

          </tr>
<%
	   if(flag20==1)
	   {
%>
	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#00FFFF">
            <font face="Tahoma"><input type="checkbox" name="m316A" value="ON" onClick="if (this.checked) {this.form.mp316A.value='1';} else {this.form.mp316A.value='0';}"></font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 316.1 - Derivative Financial Assets - Derivatives held for trading  (by types)</font></strong></td><td><a href='mpmbr316A.jsp'>MPMBR316.1</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m316A" value="ON" onClick="if (this.checked) {this.form.mp316A.value='1';} else {this.form.mp316A.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 316.1 - Derivative Financial Assets - Derivatives held for trading  (by types)</font></strong></td><td><a href='mpmbr316A.jsp'>MPMBR316.1</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag14==1)
	   {
%>
	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#00FFFF">
            <font face="Tahoma"><input type="checkbox" name="m316B" value="ON" onClick="if (this.checked) {this.form.mp316B.value='1';} else {this.form.mp316B.value='0';}"></font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 316.2 - Derivative Financial Assets - Derivatives used as cash flow  hedge(by types)</font></strong></td><td><a href='mpmbr316B.jsp'>MPMBR316.2</a></td>

          </tr>
<%
	   }
else
{
%>
	  <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m316B" value="ON" onClick="if (this.checked) {this.form.mp316B.value='1';} else {this.form.mp316B.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 316.2 - Derivative Financial Assets - Derivatives used as cash flow  hedge(by types)</font></strong></td><td><a href='mpmbr316B.jsp'>MPMBR316.2</a></td>
          </tr>
<%
		}
%>

      <tr>
            <td valign="top" width="5%" align="center" bgcolor="#FFFFE8">
            <font face="Tahoma"><input type="checkbox" name="m316C" value="ON" onClick="if (this.checked) {this.form.mp316C.value='1';} else {this.form.mp316C.value='0';}"></font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 316.3 - Derivative Financial Assets - Derivatives used as fair value hedges (by types)</font></strong></td><td><a href='mpmbr316C.jsp'>MPMBR316.3</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m318A" value="ON" onClick="if (this.checked) {this.form.mp318A.value='1';} else {this.form.mp318A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 318.1 - Schedule of Treasury Bills : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr318A.jsp'>MPMBR318.1</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m318B" value="ON" onClick="if (this.checked) {this.form.mp318B.value='1';} else {this.form.mp318B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 318.2 - Schedule of Treasury Bills : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr318B.jsp'>MPMBR318.2</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m318C" value="ON" onClick="if (this.checked) {this.form.mp318C.value='1';} else {this.form.mp318C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 318.3 - Schedule of Treasury Bills : HELD TO MATURITY</font></strong></td><td><a href='mpmbr318C.jsp'>MPMBR318.3</a></td>

          </tr>
<%
	   if(flag2==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m320A" value="ON" onClick="if (this.checked) {this.form.mp320A.value='1';} else {this.form.mp320A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 320.1 - Schedule of Federal Government Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr320A.jsp'>MPMBR320.1</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m320A" value="ON" onClick="if (this.checked) {this.form.mp320A.value='1';} else {this.form.mp320A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 320.1 - Schedule of Federal Government Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr320A.jsp'>MPMBR320.1</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag3==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m320B" value="ON" onClick="if (this.checked) {this.form.mp320B.value='1';} else {this.form.mp320B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 320.2 - Schedule of Federal Government Bonds : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr320B.jsp'>MPMBR320.2</a></td>

          </tr>
<%
	   }
else
{
%>
	 <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m320B" value="ON" onClick="if (this.checked) {this.form.mp320B.value='1';} else {this.form.mp320B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 320.2 - Schedule of Federal Government Bonds : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr320B.jsp'>MPMBR320.2</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag4==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m320C" value="ON" onClick="if (this.checked) {this.form.mp320C.value='1';} else {this.form.mp320C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 320.3 - Schedule of Federal Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr320C.jsp'>MPMBR320.3</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m320C" value="ON" onClick="if (this.checked) {this.form.mp320C.value='1';} else {this.form.mp320C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 320.3 - Schedule of Federal Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr320C.jsp'>MPMBR320.3</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag5==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m322A" value="ON" onClick="if (this.checked) {this.form.mp322A.value='1';} else {this.form.mp322A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 322.1 - Schedule of State Government Bonds:  FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr322A.jsp'>MPMBR322.1</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m322A" value="ON" onClick="if (this.checked) {this.form.mp322A.value='1';} else {this.form.mp322A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 322.1 - Schedule of State Government Bonds:  FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr322A.jsp'>MPMBR322.1</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag6==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m322B" value="ON" onClick="if (this.checked) {this.form.mp322B.value='1';} else {this.form.mp411.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 322.2 - Schedule of State Government Bonds : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr322B.jsp'>MPMBR322.2</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m322B" value="ON" onClick="if (this.checked) {this.form.mp322B.value='1';} else {this.form.mp322B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 322.2 - Schedule of State Government Bonds : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr322B.jsp'>MPMBR322.2</a></td>
          </tr>
<%
		}
%>
<%
	   if(flag7==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m322C" value="ON" onClick="if (this.checked) {this.form.mp322C.value='1';} else {this.form.mp322C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 322.3 - Schedule of State Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr322C.jsp'>MPMBR322.3</a></td>

          </tr>
<%
	   }
else
{
%>
	 <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m322C" value="ON" onClick="if (this.checked) {this.form.mp322C.value='1';} else {this.form.mp322C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 322.3 - Schedule of State Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr322C.jsp'>MPMBR322.3</a></td>
          </tr>
<%
		}
%>
<%
	 if(flag8==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m324A" value="ON" onClick="if (this.checked) {this.form.mp324A.value='1';} else {this.form.mp324A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 324.1 - Schedule of Local Government Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr324A.jsp'>MPMBR324.1</a></td>

          </tr>
<%
	   }
else
{
%>
	 <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m324A" value="ON" onClick="if (this.checked) {this.form.mp324A.value='1';} else {this.form.mp324A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 324.1 - Schedule of Local Government Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr324A.jsp'>MPMBR324.1</a></td>
          </tr>
<%
		}
%>
<%
	 if(flag22==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m324B" value="ON" onClick="if (this.checked) {this.form.mp324B.value='1';} else {this.form.mp324B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 324.2 - Schedule of Local Government Bonds AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr324B.jsp'>MPMBR324.2</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m324B" value="ON" onClick="if (this.checked) {this.form.mp324B.value='1';} else {this.form.mp324B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 324.2 - Schedule of Local Government Bonds AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr324B.jsp'>MPMBR324.2</a></td>
          </tr>
<%
		}
%>

<%
	 if(flag23==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m324C" value="ON" onClick="if (this.checked) {this.form.mp324C.value='1';} else {this.form.mp324C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 324.3 - Schedule of Local Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr324C.jsp'>MPMBR324.3</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m324C" value="ON" onClick="if (this.checked) {this.form.mp324C.value='1';} else {this.form.mp324C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 324.3 - Schedule of Local Government Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr324C.jsp'>MPMBR324.3</a></td>
          </tr>
<%
		}
%>

<%
	 if(flag24==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m326A" value="ON" onClick="if (this.checked) {this.form.mp326A.value='1';} else {this.form.mp326A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 326.1 - Schedule of Corporate Bonds: FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr326A.jsp'>MPMBR326.1</a></td>

          </tr>
<%
	   }
else
{
%>
         <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m326A" value="ON" onClick="if (this.checked) {this.form.mp326A.value='1';} else {this.form.mp326A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 326.1 - Schedule of Corporate Bonds: FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr326A.jsp'>MPMBR326.1</a></td>
          </tr>
<%
		}
%>
<%
	 if(flag25==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m326B" value="ON" onClick="if (this.checked) {this.form.mp326B.value='1';} else {this.form.mp326B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 326.2 - Schedule of Corporate Bonds AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr326B.jsp'>MPMBR326.2</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m326B" value="ON" onClick="if (this.checked) {this.form.mp326B.value='1';} else {this.form.mp326B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 326.2 - Schedule of Corporate Bonds AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr326B.jsp'>MPMBR326.2</a></td>
          </tr>
<%
		}
%>
<%
	 if(flag26==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m326C" value="ON" onClick="if (this.checked) {this.form.mp326C.value='1';} else {this.form.mp326C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 326.3 - Schedule of Corporate Bonds:  HELD TO MATURITY</font></strong></td><td><a href='mpmbr326C.jsp'>MPMBR326.3</a></td>

          </tr>
<%
	   }
else
{
%>
         <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m326C" value="ON" onClick="if (this.checked) {this.form.mp326C.value='1';} else {this.form.mp326C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 326.3 - Schedule of Corporate Bonds:  HELD TO MATURITY</font></strong></td><td><a href='mpmbr326C.jsp'>MPMBR326.3</a></td>
          </tr>
<%
		}
%>

<%
	 if(flag9==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m328A" value="ON" onClick="if (this.checked) {this.form.mp328A.value='1';} else {this.form.mp328A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 328.1 - Schedule of Other Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr328A.jsp'>MPMBR328.1</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m328A" value="ON" onClick="if (this.checked) {this.form.mp328A.value='1';} else {this.form.mp328A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 328.1 - Schedule of Other Bonds : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr328A.jsp'>MPMBR328.1</a></td>
          </tr>
<%
		}
%>

          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m328B" value="ON" onClick="if (this.checked) {this.form.mp328B.value='1';} else {this.form.mp328B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 328.2 - Schedule of Other Bonds : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr328B.jsp'>MPMBR328.2</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m328C" value="ON" onClick="if (this.checked) {this.form.mp328C.value='1';} else {this.form.mp328C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 328.3 - Schedule of Other Bonds : HELD TO MATURITY</font></strong></td><td><a href='mpmbr328C.jsp'>MPMBR328.3</a></td>

          </tr>
<%
	 if(flag10==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m330A" value="ON" onClick="if (this.checked) {this.form.mp330A.value='1';} else {this.form.mp330A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 330.1 - Schedule of Treasury Certificates : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr330A.jsp'>MPMBR330.1</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m330A" value="ON" onClick="if (this.checked) {this.form.mp330A.value='1';} else {this.form.mp330A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 330.1 - Schedule of Treasury Certificates : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr330A.jsp'>MPMBR330.1</a></td>
          </tr>
<%
		}
%>
<%
	 if(flag27==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m330B" value="ON" onClick="if (this.checked) {this.form.mp330B.value='1';} else {this.form.mp330B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 330.2 - Schedule of Treasury Certificates:  AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr330B.jsp'>MPMBR330.2</a></td>

          </tr>
<%
	   }
else
{
%>
         <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m330B" value="ON" onClick="if (this.checked) {this.form.mp330B.value='1';} else {this.form.mp330B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 330.2 - Schedule of Treasury Certificates:  AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr330B.jsp'>MPMBR330.2</a></td>
          </tr>
<%
		}
%>

<%
	 if(flag28==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m330C" value="ON" onClick="if (this.checked) {this.form.mp330C.value='1';} else {this.form.mp330C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 330.3 - Schedule of Treasury Certificates : HELD TO MATURITY</font></strong></td><td><a href='mpmbr330C.jsp'>MPMBR330.3</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m330C" value="ON" onClick="if (this.checked) {this.form.mp330C.value='1';} else {this.form.mp330C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 330.3 - Schedule of Treasury Certificates : HELD TO MATURITY</font></strong></td><td><a href='mpmbr330C.jsp'>MPMBR330.3</a></td>
          </tr>
<%
		}
%>

<%
	 if(flag29==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m332A" value="ON" onClick="if (this.checked) {this.form.mp332A.value='1';} else {this.form.mp332A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 332.1 - Schedule of CBN Registered Certificates : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr332A.jsp'>MPMBR332.1</a></td>

          </tr>
<%
	   }
else
{
%>
	<tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m332A" value="ON" onClick="if (this.checked) {this.form.mp332A.value='1';} else {this.form.mp332A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 332.1 - Schedule of CBN Registered Certificates : FAIR VALUE THROUGH PROFIT OR LOSS</font></strong></td><td><a href='mpmbr332A.jsp'>MPMBR332.1</a></td>
          </tr>
<%
		}
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m332B" value="ON" onClick="if (this.checked) {this.form.mp332B.value='1';} else {this.form.mp332B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 332.2 - Schedule of CBN Registered Certificates : AVAILABLE FOR SALE</font></strong></td><td><a href='mpmbr332B.jsp'>MPMBR332.2</a></td>

          </tr>
<%
	 if(flag11==1)
	   {
%>
          <tr>
            <td height="24" align="center" valign="top" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m332C" value="ON" onClick="if (this.checked) {this.form.mp332C.value='1';} else {this.form.mp332C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 332.3 - Schedule of CBN Registered Certificates : HELD TO MATURITY</font></strong></td><td><a href='mpmbr332C.jsp'>MPMBR332.3</a></td>

          </tr>
<%
	   }
else
{
%>
         <tr>
            <td height="24" align="center" valign="top" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m332C" value="ON" onClick="if (this.checked) {this.form.mp332C.value='1';} else {this.form.mp332C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 332.3 - Schedule of CBN Registered Certificates : HELD TO MATURITY</font></strong></td><td><a href='mpmbr332C.jsp'>MPMBR332.3</a></td>
          </tr>
<%
		}
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m334" value="ON" onClick="if (this.checked) {this.form.mp334.value='1';} else {this.form.mp334.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 334 - Schedule of Certificates of Deposits</font></strong></td><td><a href='mpmbr334.jsp'>MPMBR334</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m336" value="ON" onClick="if (this.checked) {this.form.mp336.value='1';} else {this.form.mp336.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 336 - Schedule of Other Loans and Receivables</font></strong></td><td><a href='mpmbr336.jsp'>MPMBR336</a></td>
          </tr>
<%
	 if(flag12==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m338" value="ON" onClick="if (this.checked) {this.form.mp338.value='1';} else {this.form.mp338.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 338 - Schedule of Total Loans and Receivables / Leases</font></strong></td><td><a href='mpmbr338.jsp'>MPMBR338</a></td>

          </tr>
<%
	   }
else
{
%>
        <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m338" value="ON" onClick="if (this.checked) {this.form.mp338.value='1';} else {this.form.mp338.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 338 - Schedule of Total Loans and Receivables / Leases</font></strong></td><td><a href='mpmbr338.jsp'>MPMBR338</a></td>
          </tr>
<%
		}
%>

          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m340" value="ON" onClick="if (this.checked) {this.form.mp340.value='1';} else {this.form.mp340.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 340 - Returns on Loans and Receivables - By Sector & Loan Type</font></strong></td><td><a href='mpmbr340.jsp'>MPMBR340</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m342" value="ON" onClick="if (this.checked) {this.form.mp342.value='1';} else {this.form.mp342.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 342 - Schedule of Impaired Loans and Receivables / Leases</font></strong></td><td><a href='mpmbr342.jsp'>MPMBR342</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m344" value="ON" onClick="if (this.checked) {this.form.mp344.value='1';} else {this.form.mp344.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 344 - Returns on Loans & Receivables Structure and Maturity Profile</font></strong></td><td><a href='mpmbr344.jsp'>MPMBR344</a></td>

          </tr>
<%
	 if(flag30==1)
	   {
%>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m346" value="ON" onClick="if (this.checked) {this.form.mp346.value='1';} else {this.form.mp346.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 346 - Schedule of Carrying Amount of Quoted/Unquoted Equity Investments</font></strong></td><td><a href='mpmbr346.jsp'>MPMBR346</a></td>

          </tr>
<%
	   }
else
{
%>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m346" value="ON" onClick="if (this.checked) {this.form.mp346.value='1';} else {this.form.mp346.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 346 - Schedule of Carrying Amount of Quoted/Unquoted Equity Investments</font></strong></td><td><a href='mpmbr346.jsp'>MPMBR346</a></td>
          </tr>
<%
		}
%>

          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m348" value="ON" onClick="if (this.checked) {this.form.mp348.value='1';} else {this.form.mp348.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 348 - Schedule of Investment in Subsidiaries</font></strong></td><td><a href='mpmbr348.jsp'>MPMBR348</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m350" value="ON" onClick="if (this.checked) {this.form.mp350.value='1';} else {this.form.mp350.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 350 - Schedule of Other Assets</font></strong></td><td><a href='mpmbr350.jsp'>MPMBR350</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m351" value="ON" onClick="if (this.checked) {this.form.mp351.value='1';} else {this.form.mp351.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 351 - Breakdown of Other Assets</font></strong></td><td><a href='mpmbr351.jsp'>MPMBR351</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m352" value="ON" onClick="if (this.checked) {this.form.mp352.value='1';} else {this.form.mp352.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 352 - Schedule of Other Intangible Assets</font></strong></td><td><a href='mpmbr352.jsp'>MPMBR352</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m353" value="ON" onClick="if (this.checked) {this.form.mp353.value='1';} else {this.form.mp353.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 353 - Breakdown of Other Intangible Assets</font></strong></td><td><a href='mpmbr353.jsp'>MPMBR353</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#FFFFE8"><font face="Tahoma">
              <input type="checkbox" name="m354" value="ON" onClick="if (this.checked) {this.form.mp354.value='1';} else {this.form.mp354.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#FFFFE8"><strong><font face="Tahoma" size="2">MPMBR 354 - Schedule of Non-Current Asset held for Sales / Disposal Group</font></strong></td><td><a href='mpmbr354.jsp'>MPMBR354</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m356" value="ON" onClick="if (this.checked) {this.form.mp356.value='1';} else {this.form.mp356.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 356 - Schedule of Property Plant And Equipment</font></strong></td><td><a href='mpmbr356.jsp'>MPMBR356</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m358" value="ON" onClick="if (this.checked) {this.form.mp358.value='1';} else {this.form.mp358.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 358 - Schedule of Other Deposits</font></strong></td><td><a href='mpmbr358.jsp'>MPMBR358</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m360" value="ON" onClick="if (this.checked) {this.form.mp360.value='1';} else {this.form.mp360.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 360 - Schedule of Deposit Liabilities</font></strong></td><td><a href='mpmbr360.jsp'>MPMBR360</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m362" value="ON" onClick="if (this.checked) {this.form.mp362.value='1';} else {this.form.mp362.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 362 - Schedule of Insured deposit</font></strong></td><td><a href='mpmbr362.jsp'>MPMBR362</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m364" value="ON" onClick="if (this.checked) {this.form.mp364.value='1';} else {this.form.mp364.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 364 - Schedule of Deposit Ownership</font></strong></td><td><a href='mpmbr364.jsp'>MPMBR364</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m366" value="ON" onClick="if (this.checked) {this.form.mp366.value='1';} else {this.form.mp366.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 366 - Schedule of Money at Call Held for Internal Banks</font></strong></td><td><a href='mpmbr366.jsp'>MPMBR366</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m368" value="ON" onClick="if (this.checked) {this.form.mp368.value='1';} else {this.form.mp368.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 368 - Placements from Banks in Nigeria</font></strong></td><td><a href='mpmbr368.jsp'>MPMBR368</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m370" value="ON" onClick="if (this.checked) {this.form.mp370.value='1';} else {this.form.mp370.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 370 - Placements from Other PMBs/Financial Institutions</font></strong></td><td><a href='mpmbr370.jsp'>MPMBR370</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m372" value="ON" onClick="if (this.checked) {this.form.mp372.value='1';} else {this.form.mp372.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 372 - Schedule of Balances Due to Other Banks in Nigeria</font></strong></td><td><a href='mpmbr372.jsp'>MPMBR372</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m374" value="ON" onClick="if (this.checked) {this.form.mp374.value='1';} else {this.form.mp374.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 374 - Schedule of Balances Due to Other PMBs/FIs</font></strong></td><td><a href='mpmbr374.jsp'>MPMBR374</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m376" value="ON" onClick="if (this.checked) {this.form.mp376.value='1';} else {this.form.mp376.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 376 - Schedule of Balances Due to Foreign Banks</font></strong></td><td><a href='mpmbr376.jsp'>MPMBR376</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m378" value="ON" onClick="if (this.checked) {this.form.mp378.value='1';} else {this.form.mp378.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 378 - Schedule of Balances Due to Others</font></strong></td><td><a href='mpmbr378.jsp'>MPMBR378</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m380A" value="ON" onClick="if (this.checked) {this.form.mp380A.value='1';} else {this.form.mp380A.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 380.1 - Schedule of Derivative Financial Liabilities - Derivatives held for trading  (by types)</font></strong></td><td><a href='mpmbr380A.jsp'>MPMBR380.1</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m380B" value="ON" onClick="if (this.checked) {this.form.mp380B.value='1';} else {this.form.mp380B.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 380.2 - Schedule of Derivative Financial Liabilities - Derivatives used as cash flow  hedge(by types)</font></strong></td><td><a href='mpmbr380B.jsp'>MPMBR380.2</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m380C" value="ON" onClick="if (this.checked) {this.form.mp380C.value='1';} else {this.form.mp380C.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 380.3 - Schedule of Derivative Financial Liabilities - Derivatives used as fair value hedges (by types)</font></strong></td><td><a href='mpmbr380C.jsp'>MPMBR380.3</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m382" value="ON" onClick="if (this.checked) {this.form.mp382.value='1';} else {this.form.mp382.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 382 - Schedule of Other Liabilities</font></strong></td><td><a href='mpmbr382.jsp'>MPMBR382</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m383" value="ON" onClick="if (this.checked) {this.form.mp383.value='1';} else {this.form.mp383.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 383 - Breakdown of Other Liabilities</font></strong></td><td><a href='mpmbr383.jsp'>MPMBR383</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m384" value="ON" onClick="if (this.checked) {this.form.mp384.value='1';} else {this.form.mp384.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 384 - Schedule of Loans from Banks in Nigeria</font></strong></td><td><a href='mpmbr384.jsp'>MPMBR384</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m386" value="ON" onClick="if (this.checked) {this.form.mp386.value='1';} else {this.form.mp386.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 386 - Schedule of Foreign Loans</font></strong></td><td><a href='mpmbr386.jsp'>MPMBR386</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m388" value="ON" onClick="if (this.checked) {this.form.mp388.value='1';} else {this.form.mp388.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 388 - Schedule of Other Loans & Advances</font></strong></td><td><a href='mpmbr388.jsp'>MPMBR388</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m390" value="ON" onClick="if (this.checked) {this.form.mp390.value='1';} else {this.form.mp390.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 390 - Schedule of Other Reserves</font></strong></td><td><a href='mpmbr390.jsp'>MPMBR390</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m392" value="ON" onClick="if (this.checked) {this.form.mp392.value='1';} else {this.form.mp392.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 392 - Schedule of Contingent Liabilities</font></strong></td><td><a href='mpmbr392.jsp'>MPMBR392</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m394" value="ON" onClick="if (this.checked) {this.form.mp394.value='1';} else {this.form.mp394.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 394 - Returns on Interest Rate</font></strong></td><td><a href='mpmbr394.jsp'>MPMBR394</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m396" value="ON" onClick="if (this.checked) {this.form.mp396.value='1';} else {this.form.mp396.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 396 - Schedule of Fund Sources and Interest Cost</font></strong></td><td><a href='mpmbr396.jsp'>MPMBR396</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m398" value="ON" onClick="if (this.checked) {this.form.mp398.value='1';} else {this.form.mp398.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 398 - Schedule of Lending Above Statutory Limit</font></strong></td><td><a href='mpmbr398.jsp'>MPMBR398</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m400" value="ON" onClick="if (this.checked) {this.form.mp400.value='1';} else {this.form.mp400.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 400 - Returns on Dismissed/Terminated Staff</font></strong></td><td><a href='mpmbr400.jsp'>MPMBR400</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m402" value="ON" onClick="if (this.checked) {this.form.mp402.value='1';} else {this.form.mp402.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 402 - Returns on Fraud & Forgeries / Armed Robbery (Bank Staff)</font></strong></td><td><a href='mpmbr402.jsp'>MPMBR402</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m404" value="ON" onClick="if (this.checked) {this.form.mp404.value='1';} else {this.form.mp404.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 404 - Returns On Frauds & Forgeries / Armed Robbery (Non Bank Staff)</font></strong></td><td><a href='mpmbr404.jsp'>MPMBR404</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m406" value="ON" onClick="if (this.checked) {this.form.mp406.value='1';} else {this.form.mp406.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 406 - Schedule of Undrawn Commitment</font></strong></td><td><a href='mpmbr406.jsp'>MPMBR406</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m408" value="ON" onClick="if (this.checked) {this.form.mp408.value='1';} else {this.form.mp408.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 408 - Returns on Total Loans and Advances Granted to / Outstanding Bonds Against Local Government</font></strong></td><td><a href='mpmbr408.jsp'>MPMBR408</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m410" value="ON" onClick="if (this.checked) {this.form.mp410.value='1';} else {this.form.mp410.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 410 - Returns on Total Loans and Advances Granted to / Outstanding Bonds Against State Governments and FCT</font></strong></td><td><a href='mpmbr410.jsp'>MPMBR410</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m412" value="ON" onClick="if (this.checked) {this.form.mp412.value='1';} else {this.form.mp412.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 412 - Returns on Consumer Complaints</font></strong></td><td><a href='mpmbr412.jsp'>MPMBR412</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FF00"><font face="Tahoma">
              <input type="checkbox" name="m1000" value="ON" onClick="if (this.checked) {this.form.mp1000.value='1';} else {this.form.mp1000.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FF00"><strong><font face="Tahoma" size="2">MPMBR 1000 - Statement of Comprehensive Income</font></strong></td><td><a href='mpmbr1000.jsp'>MPMBR1000</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m1001" value="ON" onClick="if (this.checked) {this.form.mp1001.value='1';} else {this.form.mp1001.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 1001 - Schedule of Other Trading Income</font></strong></td><td><a href='mpmbr1001.jsp'>MPMBR1001</a></td>

          </tr>
          <tr>
            <td valign="top" align="center" bgcolor="#00FFFF"><font face="Tahoma">
              <input type="checkbox" name="m1002" value="ON" onClick="if (this.checked) {this.form.mp1002.value='1';} else {this.form.mp1002.value='0';}">
            </font></td>
            <td valign="top" bgcolor="#00FFFF"><strong><font face="Tahoma" size="2">MPMBR 1002 - Schedule of Other Operating Income</font></strong></td><td><a href='mpmbr1002.jsp'>MPMBR1002</a></td>

          </tr>
            <tr>
            <td align="center" bgcolor="#F5F5F5" colspan="2">&nbsp;
            <font face="Tahoma">
            <input type="submit" value="Generate" name="B1" style="font-family: Tahoma; font-size: 12px"></font>&nbsp;&nbsp;
            <input type="reset" value="Reset" name="B2" style="font-family: Tahoma; font-size: 12px"></td>
          </tr>
      </form>

      </table>
          <p>&nbsp;</p>
        </div></td>
    </tr>
    <tr>
      <td>

<jsp:include flush="true" page="footer.jsp"/>


      </td>
    </tr>
  </table>
  </center>
</div>

</body>

</html>
