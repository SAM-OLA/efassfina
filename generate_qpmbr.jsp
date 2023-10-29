<%@ page language="java" import="cbnbas.qpmbr.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  	<meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con=null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "QPMBR";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String todate = "";
  String fromdate = "";
  String signatory1 = "";
  String signatory2 = "";
  String contactname = "";
  String telno = "";
  String extno = "";
  String FinDate = "";
  String CBN_NDIC_LAST_EXAM_DATE = "";

  boolean tester = true;

  try {

     connect c = new connect();

    con = c.connectMethod();

     st = con.createStatement();
     rs = st.executeQuery("Select * from CONFIG order by SNO");

     if ( rs.next() ) {
       bankcode = rs.getString(3);
     }

     if ( rs.next() ) {
       bankname = rs.getString(3);
     }

     if ( rs.next() ) {
       fromdate = rs.getString(3);
     }
     if ( rs.next() ) {
       todate = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory1 = rs.getString(3);
     }

     if ( rs.next() ) {
       signatory2 = rs.getString(3);
     }

     if ( rs.next() ) {
       contactname = rs.getString(3);
     }

     if ( rs.next() ) {
       telno = rs.getString(3);
     }

     if ( rs.next() ) {
       extno = rs.getString(3);
     }
if ( rs.next() ) {
       FinDate = rs.getString(3);
     }
if ( rs.next() ) {
       CBN_NDIC_LAST_EXAM_DATE = rs.getString(3);
     }

//Handle errors for JDBC
   }
   catch (SQLException se) {
     se.printStackTrace();
//Handle other exceptions
   }
   catch (Exception e) {
     e.printStackTrace();
//finally block used to close connection
   }
   finally {
     try {
       if (con != null) {
         String msg = "Closing connection from finally block.";
         System.out.println(msg);
         rs.close();
         st.close();
         con.close();
       }
     }
     catch (SQLException se) {
       se.printStackTrace();
     } //end finally try
   } //end try
%>
<%
	String qpr1510 = request.getParameter("qb1510");
    String qpr1520 = request.getParameter("qb1520");
    String qpr1530 = request.getParameter("qb1530");
    String qpr1540 = request.getParameter("qb1540");


	String ReportDate = request.getParameter("reportdate");

	String outputpath = "c:/cbnxml/qpmbr/";

	String newpath = outputpath + todate ;
        File fi = new File(newpath);
        if (fi.exists()) {
          outputpath = newpath + "/";
          System.out.println("Folder "+newpath+ " already exist ...");
        } else {
          // Create Folder ...
          newpath = newpath + "/";
          boolean success = (new File(newpath)).mkdir();
          if (!success) {
            System.out.println("Folder "+newpath+ " could not be created ...");
          } else  outputpath = newpath;
        }
        
    if ( qpr1510.equals("1") ) {
           qpmbr1510 q1510 = new qpmbr1510();
	     //new qpmbr1510Reloaded(ReportDate);
           q1510.setfromDate(fromdate);
           q1510.settoDate(todate);
           q1510.setInstname(bankname);
           q1510.setInstcode(bankcode);
           q1510.setOutputpath(outputpath);
           q1510.setSignatory1(signatory1);
           q1510.setSignatory2(signatory2);
           q1510.setContactName(contactname);
           q1510.setTelno(telno);
           q1510.setExtno(extno);
           boolean test = q1510.convert();
    }

	if ( qpr1520.equals("1") ) {
           qpmbr1520 q1520 = new qpmbr1520();
	     //new qpmbr1520Reloaded(ReportDate);
           q1520.setfromDate(fromdate);
           q1520.settoDate(todate);
           q1520.setInstname(bankname);
           q1520.setInstcode(bankcode);
           q1520.setOutputpath(outputpath);
           q1520.setSignatory1(signatory1);
           q1520.setSignatory2(signatory2);
           q1520.setContactName(contactname);
           q1520.setTelno(telno);
           q1520.setExtno(extno);
           boolean test = q1520.convert();
    }

    	if ( qpr1530.equals("1") ) {
           qpmbr1530 q1530 = new qpmbr1530();
	     //new qpmbr1530Reloaded(ReportDate);
           q1530.setfromDate(fromdate);
           q1530.settoDate(todate);
           q1530.setInstname(bankname);
           q1530.setInstcode(bankcode);
           q1530.setOutputpath(outputpath);
           q1530.setSignatory1(signatory1);
           q1530.setSignatory2(signatory2);
           q1530.setContactName(contactname);
           q1530.setTelno(telno);
           q1530.setExtno(extno);
           boolean test = q1530.convert();
    }
    if ( qpr1540.equals("1") ) {
           qpmbr1540 q1540 = new qpmbr1540();
	   new qpmbr1540Reloaded(ReportDate);
           q1540.setfromDate(fromdate);
           q1540.settoDate(todate);
           q1540.setInstname(bankname);
           q1540.setInstcode(bankcode);
           q1540.setOutputpath(outputpath);
           q1540.setSignatory1(signatory1);
           q1540.setSignatory2(signatory2);
           q1540.setContactName(contactname);
           q1540.setTelno(telno);
           q1540.setExtno(extno);
           boolean test = q1540.convert();
    }

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'qpmbr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>
