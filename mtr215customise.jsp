<%@ page import="java.sql.*, cbnbas.mtr.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int chenum=1;
	boolean flag=false;
	int hmph=0;
	for(int ii=1;ii<=cnt;ii++)
	{
		String che=request.getParameter("chec"+ii);
		//out.println(che);
		if(che!=null)
		{
			flag=true;
			hmph++;
			session.setAttribute("val"+hmph,String.valueOf(ii));
			chenum++;
		}
	}
	session.setAttribute("no",String.valueOf(chenum));
	if(flag==true)
	{
		response.sendRedirect("mtr215del.jsp");
	}
	
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from mtr215");
		pss.executeUpdate();
		for(int ii=1;ii<=cnt;ii++)
		{
			String i=String.valueOf(ii);
			String checkval=request.getParameter("chec"+i);
			String count=request.getParameter("count"+i);
			String f1=request.getParameter("f1"+i);
			String f2=request.getParameter("f2"+i);
			String f3=request.getParameter("f3"+i);
			String f4=request.getParameter("f4"+i);
						
			pss=cnn.prepareStatement("insert into mtr215 values(?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.executeUpdate();
		
		}
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mtr215.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>