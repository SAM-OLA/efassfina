<%@ page import="java.sql.*, cbnbas.mpmbr.connect"%>
<%!
		private java.text.DecimalFormat ls_format = new java.text.DecimalFormat("##0");
         private java.text.DecimalFormat ls_format1 = new java.text.DecimalFormat("##0.00");
%>
<%
	ls_format1.setMaximumFractionDigits(2);
    ls_format1.setMaximumIntegerDigits(25);
	String cntt=String.valueOf(request.getParameter("cnt"));
	int cnt=Integer.parseInt(cntt);
	int anom1=0;
	int anom2=0;
	double anom3=0.0;
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
		response.sendRedirect("mpmbr302del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from mpmbr302");
		pss.executeUpdate();
		for(int ii=1;ii<=cnt;ii++)
		{
			String i=String.valueOf(ii);
			String checkval=request.getParameter("chec"+i);
			String count=request.getParameter("count"+i);
			String f1=request.getParameter("f1"+i);
			String f2=request.getParameter("f2"+i);
							
			
			pss=cnn.prepareStatement("insert into mpmbr302 values(?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			anom3+=Double.parseDouble(f2);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into mpmbr302 values(?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(ls_format1.format(anom3)));
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr302.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>