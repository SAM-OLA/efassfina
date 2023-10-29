<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%!
	Connection cnn=null;
%>
<%
	try
	{
		connect c = new connect();
   		cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from mtr213");
		pss.executeUpdate();
		for(int i=1;i<36;i++)
		{
			String f1=request.getParameter("f1"+i);
			String f2=request.getParameter("f2"+i);
			String f3=request.getParameter("f3"+i);
			String f4=request.getParameter("f4"+i);
			pss=cnn.prepareStatement("insert into mtr213 values(?,?,?,?)");		
			pss.setString(1,f1);
			pss.setString(2,f2);
			pss.setString(3,f3);
			pss.setString(4,f4);
			pss.executeUpdate();
		}
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mtr213.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.print(e.toString());
	}
%>