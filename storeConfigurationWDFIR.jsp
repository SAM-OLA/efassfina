<%@ page import="java.sql.*, cbnbas.wdfir.connect"%>
<%!
	Connection cn=null;
%>
<%
	try
	{
		connect c = new connect();
   		cn = c.connectMethod();
	}catch(Exception e)
	{
		out.println("Error in Config: "+e.toString());
	}
%>
<%
	String item="", value="", sno="";
	int count=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<count;cnt++)
	{
		try
		{
			sno=request.getParameter(cnt+"sno");
			item=request.getParameter(cnt+"item");
			value=request.getParameter(cnt+"value");
			//sno=cnt+1;
			PreparedStatement pst=cn.prepareStatement("update Config set Config.item=?, Config.value=? where Config.sno=?");
			pst.setString(1,item);
			pst.setString(2,value);
			pst.setString(3,sno);

			int affected=pst.executeUpdate();
			//if(affected>0)
			//	out.println(" inserted! "+value+"<br>");
			//else
			//	out.println("<br>"+item);
		}
		catch(Exception ex)
		{
			out.println(ex.toString());
		}

	}
	cn.close();
%>
	
  <SCRIPT Language = "JavaScript">
    alert("Update Successful");
    window.location = 'configurationWDFIR.jsp';
    </SCRIPT>