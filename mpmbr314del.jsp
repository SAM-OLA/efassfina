<!--
@author @author D & T Solutions
-->

<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%
	try
	{
		connect c = new connect();
   		Connection cn = c.connectMethod();
		String nos=String.valueOf(session.getAttribute("no"));
		int no=Integer.parseInt(nos);
		out.println("***********"+no);
		int sno=0;
		for(int i=1;i<no;i++)
		{
			String value=String.valueOf(session.getAttribute("val"+i));
			PreparedStatement pss=cn.prepareStatement("delete * from mpmbr314 where S_NO='"+value+"'");
			pss.executeUpdate();
		}
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select * from mpmbr314");
		while(rs.next())
		{
			sno++;
		}
		
			int ici=1;
			Statement st2=cn.createStatement();
			ResultSet rs2=st2.executeQuery("select * from mpmbr314");
			while(rs2.next())
			{
				String sno2=rs2.getString(1);
				if(sno2.trim()!= "T_99999")
				{
					PreparedStatement pss2=cn.prepareStatement("update mpmbr314 set S_NO='"+ici+"' where S_NO='"+sno2+"'");
					pss2.executeUpdate();
					ici++;
				}	
			}
			
		
		cn.close();
		response.sendRedirect("mpmbr314.jsp");
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>