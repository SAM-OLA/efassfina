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
	
	double anom1=0.0;
	double anom2=0.0;
	double anom3=0.0;
	double anom4=0.0;
	double anom5=0.0;

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
		response.sendRedirect("mpmbr338del.jsp");
	}
	try
	{
		connect c = new connect();
   		Connection cnn = c.connectMethod();
		PreparedStatement pss=cnn.prepareStatement("delete from mpmbr336");
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
			String f5=request.getParameter("f5"+i);
			String f6=request.getParameter("f6"+i);
			String f7=request.getParameter("f7"+i);
			String f8=request.getParameter("f8"+i);
			String f9=request.getParameter("f9"+i);
			String f10=request.getParameter("f10"+i);
			String af11=request.getParameter("af11"+i);
			String af12=request.getParameter("af12"+i);
			String af13=request.getParameter("af13"+i);

						
			
			pss=cnn.prepareStatement("insert into mpmbr336 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");		
			pss.setString(1,count);
			pss.setString(2,f1);
			pss.setString(3,f2);
			pss.setString(4,f3);
			pss.setString(5,f4);
			pss.setString(6,f5);
			pss.setString(7,f6);
			pss.setString(8,f7);
			pss.setString(9,f8);
			pss.setString(10,f9);
			pss.setString(11,f10);
			pss.setString(12,af11);
			pss.setString(13,af12);
			pss.setString(14,af13);


			anom1+=Double.parseDouble(f3);
			anom2+=Double.parseDouble(f7);
			anom3+=Double.parseDouble(f9);
			anom4+=Double.parseDouble(f10);
			anom5+=Double.parseDouble(af11);
			pss.executeUpdate();
		
		}
		pss=cnn.prepareStatement("insert into mpmbr336 values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");	
		pss.setString(1,String.valueOf(request.getParameter("total1")));
		pss.setString(2,String.valueOf(request.getParameter("total2")));
		pss.setString(3,String.valueOf(request.getParameter("total3")));
		pss.setString(4,String.valueOf(ls_format1.format(anom1)));
		pss.setString(5,String.valueOf(request.getParameter("total5")));
		pss.setString(6,String.valueOf(request.getParameter("total6")));
		pss.setString(7,String.valueOf(request.getParameter("total7")));
		pss.setString(8,String.valueOf(ls_format1.format(anom2)));
		pss.setString(9,String.valueOf(request.getParameter("total9")));
		pss.setString(10,String.valueOf(ls_format1.format(anom3)));
		pss.setString(11,String.valueOf(ls_format1.format(anom4)));
		pss.setString(12,String.valueOf(ls_format1.format(anom5)));
		pss.setString(13,String.valueOf(request.getParameter("total13")));
		pss.setString(14,String.valueOf(request.getParameter("total14")));
		pss.executeUpdate();
		cnn.close();
		%>
		<SCRIPT Language = "JavaScript">
		    alert("Data Successful saved");
		    window.location = 'mpmbr336.jsp';
	      </SCRIPT>
		<%

	}
	catch(Exception e)
	{
		out.println(e.toString());
	}
%>