<%@ page import="java.sql.*,cbnbas.spmbr.connect"%>
<%
	try
	{
		connect c = new connect();
   		Connection cn = c.connectMethod();
		String nos=String.valueOf(session.getAttribute("no"));
		int no=Integer.parseInt(nos);
		int sno=0;
		for(int i=1;i<no;i++)
		{
			String value=String.valueOf(session.getAttribute("val"+i));
			PreparedStatement pss=cn.prepareStatement("delete * from spmbr1910D where S_NO='"+value+"'");
			pss.executeUpdate();
		}
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select * from spmbr1910D");
		while(rs.next())
		{
			sno++;
		}
		
			int ici=1;
			Statement st2=cn.createStatement();
			ResultSet rs2=st2.executeQuery("select * from spmbr1910D");
			while(rs2.next())
			{
				String sno2=rs2.getString(1);
				if(sno2.trim()!= "Total")
				{
					PreparedStatement pss2=cn.prepareStatement("update spmbr1910D set S_NO='"+ici+"' where S_NO='"+sno2+"'");
					pss2.executeUpdate();
					ici++;
				}	
			}
			
		
		cn.close();
		response.sendRedirect("spmbr1910D.jsp");
	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>