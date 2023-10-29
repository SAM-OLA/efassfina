<!--
@author D & T Solutions
-->
<head>
<script>
function openValidate()
{
	history.go(-1);
	window.open("mpmbr382Validate.jsp",null, "height=300,width=320,status=no,toolbar=no,menubar=no,location=no,resizable=yes,scrollbars=yes");
	return false;
}
</script>

<meta name="Microsoft Theme" content="poetic 1111, default">
</head>

<body>

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();

	int rec=Integer.parseInt(request.getParameter("norec"));
	String code="";
	String source="";
	String amount="";

	float total=0.0f;
	PreparedStatement pst=null;

	for(int cnt=0;cnt<(rec-1);cnt++)
	{
		try
		{
			code=request.getParameter("code"+cnt);
			source=request.getParameter("source"+cnt);
			amount=request.getParameter("amount"+cnt);
			pst=cn.prepareStatement("update mpmbr382 set [source]=?,[amount]=? where code=?");
			pst.setString(1,source);
			pst.setString(2,amount);
			pst.setString(3,code);
			int affected=pst.executeUpdate();
			if(affected>0)
			{
				pst=cn.prepareStatement("update mpmbr382Data set [amount]=? where code=?");
				pst.setString(1,amount);
				pst.setString(2,code);
				affected=pst.executeUpdate();
				//out.println(code+"\t\t"+source+"\t\t"+value+"\t\tInserted: <br>");
			}
			else
			{
				//out.println(code+"\t\t"+source+"\t\t"+value+"\t\tnot Inserted: <br>");
			}
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr382.jsp';
	      </SCRIPT>
		<%


		}
		catch(Exception e)
		{
			out.println(e.toString());
		}
	}

	//out.println("total: "+total);
%>
</body>