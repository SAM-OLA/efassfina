<%@ page import="java.sql.*,cbnbas.per1.*" %>
<%
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from per301");
		pss.executeUpdate();
		for(int i=1;i<29;i++)
		{
			String f1=request.getParameter("f1"+i);
			String f2=request.getParameter("f2"+i);
			String f3=request.getParameter("f3"+i);
			pss=cnn.prepareStatement("insert into per301 values(?,?,?)");		
			pss.setString(1,f1);
			pss.setString(2,f2);
			pss.setString(3,f3);
			pss.executeUpdate();
		}
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'per301.jsp';
	      </SCRIPT>
		<%
	}
	catch(Exception e)
	{
		out.print(e.toString());
	}
%>