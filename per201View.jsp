<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
		connect c = new connect();
   		Connection cnn = c.connectMethod();
   		Connection cnn2 = c.connectSource();

		PreparedStatement pst1=cnn.prepareStatement("delete from per201");
		pst1.executeUpdate();
		pst1.close();

		Statement stmt = cnn2.createStatement();
		ResultSet rset = stmt.executeQuery("select  a.sname || ' ' || a.oname, a.empno,a.staff_post,'no position',a.certnam1,a.course1,g.basic_sal,'' from  fmb.employee a,  fmb.division b,  fmb.department c,  fmb.statetab e,  fmb.status f,  fmb.income g where a.branch  = e.state_code and b.code = c.div_code and c.div_code = a.div_code and c.dept_code = a.dept_code and a.emp_stat = f.code and a.emp_stat in ('A', 'N', 'T', 'C', 'I', 'U', 'O', 'D', 'L') and a.grade in ('B8', 'C1', 'C2', 'D1', 'D2') order by a.branch, a.grade desc, a.step desc");
	
		int cnt=0;
		while(rset.next())
		{
			cnt++;
			PreparedStatement pst=cnn.prepareStatement("insert into per201 values (?,?,?,?,?,?,?,?,?)");
			pst.setString(1,""+cnt);
			pst.setString(2,rset.getString(1));
			pst.setString(3,rset.getString(2));
			pst.setString(4,rset.getString(3));
			pst.setString(5,rset.getString(4));
			pst.setString(6,rset.getString(5));
			pst.setString(7,rset.getString(6));
			pst.setString(8,rset.getString(7));
			pst.setString(9,rset.getString(8));
			pst.executeUpdate();
			pst.close();
		}

			PreparedStatement pst4=cnn.prepareStatement("insert into per201 values ('T_99999','','','','','','','','')");
			pst4.executeUpdate();
			pst4.close();


		cnn2.close();

	
%>

<html>
<head>
<script type="text/javascript" src="atoll.js" tppabs="atoll.js"></script>
<link href="styles.css" tppabs="styles.css" rel="stylesheet" type="text/css">
<title>CBN EFASS System - PER 201</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<SCRIPT language="JavaScript1.2">
	num=0;
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
  function del() 
  {
	num++;
  }
  function dele()
  {
  	if(num!=0)
  	{
  		var name=confirm("Are you sure you want to delete these item(s)?");
		if (!name)
		{
			return false;
		}
  	}
  }
  function validate(obj)
{
x=document.myForm
at=obj.value.indexOf(".")
if (at != -1)
	{
	alert("this field can't contain a decimal number")
	obj.select()
	obj.focus()
	return false
	}

}

</SCRIPT>

<body>
  <center>
<jsp:include flush="true" page="header.jsp"/>
<br>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="1154">
        <tr>
          <td width="66"><a href="pertoc.jsp"><b><font size="2">PER TOC</font></b></a></td>
          <td width="1066">
          <p align="center"><b><font size="2">CAPTURE COMPREHENSIVE BANK STAFF LIST - PER 201</font></b></td>
          <td width="18">&nbsp;</td>
        </tr>
</table>
<br>

<table width=1000 border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">

 	<tr>
 	<form action="per201customise.jsp" method="post">
	<td>S_NO</td>
	<td>NAME</td>
	<td>ID CARD NUMBER</td>
	<td>DESIGNATION</td>
	<td>POSITION</td>
	<td>QUALIFICATION</td>
	<td>DISCIPLINE</td>
	<td>SALARY</td>
	<td>ALLOWANCES</td>

	</tr>
    <%


    	try
		{
    	
    	
    
    			Statement st2=cnn.createStatement();
			ResultSet rs=st2.executeQuery("select * from per201");
			while(rs.next())
			{
				out.println("<tr> ");
%>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
<%
				out.println("</tr> ");

				
			}
    		}
    	catch(Exception e)
	{
	}
		cnn.close();
    %>
     
	
	</td>
  </tr>
   <tr>
<td><input size=5>
<td><input size=40>
<td><input size=7>
<td><input size=20>
<td><input size=20>
<td><input size=10>
<td><input size=30>
<td><input size=10>
<td><input size=10>
</tr>
  
    
  </table>
  </center>
</div>

</div>

</div>

</body>

</html>
