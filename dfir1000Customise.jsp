<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("dfir1000Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>

<!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>

<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
%>
<%
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}
	catch(Exception e)
	{
		out.println("dfir1000 Error: "+e.toString());
	}

	PreparedStatement pst=null;

	String code="";
	String desc="";
	String notes="";
	String source="";
	String amount="";

	int rowCnt=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<rowCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		desc=request.getParameter("desc"+cnt);
		notes=request.getParameter("notes"+cnt);
		source=request.getParameter("source"+cnt);
		amount=request.getParameter("amount"+cnt);


		try
		{
			if(code.equals("30150") || code.equals("30240") || code.equals("30480") || code.equals("30860") || code.equals("30920"))
			{
				source="2";
				//out.println("<hr>");
			}

			//out.println(code+"___"+desc+"___"+source1+"___"+latest+"___"+source2+"___"+yearto);

			pst=cn.prepareStatement("update qdfir1000 set Notes=?,source=?,[value]=? where code=?");
			pst.setString(1,notes);
			pst.setString(2,source);
			pst.setString(3,amount);
			pst.setString(4,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				//out.println("___inserted!<br>");
			}
			else
			{
				//out.println("___not inserted!<br>");
			}
		}
		catch(Exception e)
		{
			out.println("qdfir1000 update error: "+e.toString());
		}
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'dfir1000.jsp';
	      </SCRIPT>
		<%

	}
	cn.close();
%>
</body>