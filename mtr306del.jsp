<%@ page import="java.sql.*, cbnbas.mtr.connect" %>
<%
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		String nos=String.valueOf(session.getAttribute("no"));
		int no=Integer.parseInt(nos);
		//out.println("***********"+no);
		int sno=0;
		for(int i=1;i<no;i++)
		{
			String value=String.valueOf(session.getAttribute("val"+i));
			PreparedStatement pss=cnn.prepareStatement("delete * from mtr306 where S_NO='"+value+"'");
			pss.executeUpdate();
		}
		Statement st=cnn.createStatement();
		ResultSet rs=st.executeQuery("select * from mtr306 ");
		while(rs.next())
		{
			sno++;
		}
		
			int ici=1;
			Statement st2=cnn.createStatement();
			ResultSet rs2=st2.executeQuery("select * from mtr306 ");
			while(rs2.next())
			{
				String sno2=rs2.getString(1);
				if(sno2.trim()!= "T_99999")
				{
					PreparedStatement pss2=cnn.prepareStatement("update mtr306 set S_NO='"+ici+"' where S_NO='"+sno2+"'");
					pss2.executeUpdate();
					ici++;
				}	
			}
			
		
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Delete Successful");
		    window.location = 'mtr306.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>