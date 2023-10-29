<!--
@author D & T Solutions
-->
<%@ page import="java.sql.*, cbnbas.dtr.connect"%>
<%!
	Connection cn=null;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();
%>
<%
	String code="", desc="", source="", value="";

	int count=Integer.parseInt(request.getParameter("rowcount"));

	for(int cnt=0;cnt<count;cnt++)
	{
		try
		{
			code=request.getParameter("code"+cnt);
//			desc=request.getParameter("desc"+cnt);
			source=request.getParameter("source"+cnt);
			value=request.getParameter("value"+cnt);

			if(code.equals("10117") || code.equals("10130") || code.equals("10150") || code.equals("10170") || code.equals("10190") || code.equals("10210") || code.equals("10230"))
			{
				source="2";
			}

			//out.print(code+"____"+source+"____"+value);


//			PreparedStatement pst=cn.prepareStatement("update dtr203 set dtr203.desc=?,dtr203.source=?,dtr203.value=? where dtr203.code=?");
			PreparedStatement pst=cn.prepareStatement("update dtr203 set [source]=?,[value]=? where [code]=?");
			pst.setString(1,source);
			pst.setString(2,value);
			pst.setString(3,code);

			int affected=pst.executeUpdate();
			if(affected>0)
			{
				//out.println(" inserted! <br>");
			}
			else
			{
				//out.println(" not inserted! <br>");
			}
			
		}
		catch(Exception ex)
		{
			out.println("dtr - 203 Customise: "+ex.toString());
		}

	}
	cn.close();
	%>
	<SCRIPT Language = "JavaScript">
	    alert("Data Successful saved");
	    window.location = 'dtr203.jsp';
	</SCRIPT>
	<%

%>
