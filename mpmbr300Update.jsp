<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
	Connection cn=null;
	String code;

%>
<%
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	String code =request.getParameter("CODE");
	String description =request.getParameter("DESCRIPTION");
	String source =request.getParameter("SOURCE");
	String value =request.getParameter("VALUE");

	PreparedStatement pst=cn.prepareStatement("Update mpmbr300 set [description] = ?, [source] =?, [value] = ? where [code] = ?");
	pst.setString(1, description);
	pst.setString(2, source);
	pst.setString(3, value);
	pst.setString(4, code);
	int flag=pst.executeUpdate();
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>
<SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'mpmbr300.jsp';
</SCRIPT>