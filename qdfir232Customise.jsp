<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int anom1=0;
	int anom2=0;
	int anom3=0;
	int anom4=0;
	int anom5=0;
	int anom6=0;

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
		response.sendRedirect("qdfir232del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from qdfir232");
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

						
			
			pss=cnn.prepareStatement("insert into qdfir232 values(?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);

			anom3+=Integer.parseInt(f4);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into qdfir232 values(?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(request.getParameter("total4")));
		pss.setString(5,String.valueOf(anom3));
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'qdfir232.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>