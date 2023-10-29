<!--
@author Abu Taoheed
-->
<a href="qdfir102Temp.jsp">back</a>
<hr>
<%@ page import="java.sql.*, cbnbas.qdfir.connect"%>
<%!
	Connection cn=null;
	PreparedStatement pst=null;

	int recCnt=0;
	int cnt=0;
%>
<%
		connect c = new connect();
   		cn = c.connectMethod();

	int recCnt=Integer.parseInt(request.getParameter("rowcount"));
	String code="";
	String desc="";
	String amt="";
	String anothercode="";

	pst=cn.prepareStatement("delete from qdfir102");
	pst.execute();
	pst=cn.prepareStatement("delete from qdfir102Data");
	pst.execute();

	for(int cnt=0;cnt<recCnt;cnt++)
	{
		code=request.getParameter("code"+cnt);
		desc=request.getParameter("desc"+cnt);
		amt=request.getParameter("amt"+cnt);
		anothercode=request.getParameter("anothercode"+cnt);


out.println(code+"_____"+amt+"_____"+anothercode+"<br>");

		try
		{
			pst=cn.prepareStatement("insert into qdfir102(sno,itemdesc,amount,itemcode) values(?,?,?,?)");
			pst.setString(1,code);
			pst.setString(2,desc);
			pst.setString(3,amt);
			pst.setString(4,anothercode);

			int affected=pst.executeUpdate();

			if(affected>0)
				out.println(code+" inserted!<br>");
			else
				out.println(code+" not inserted!<br>");

			//updating qdfir102Data table
			pst=cn.prepareStatement("insert into qdfir102Data(sno,itemdesc,amount,itemcode) values(?,?,?,?)");
			pst.setString(1,code);
			pst.setString(2,desc);
			pst.setString(3,amt);
			pst.setString(4,anothercode);

			affected=pst.executeUpdate();
		}
		catch(Exception e)
		{
			out.println("qdfir 102 Custom Error: "+e.toString());
		}
	}
	cn.close();
%>
<hr>
<a href="qdfir102Temp.jsp">back</a>
