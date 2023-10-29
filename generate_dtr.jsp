<%@ page language="java" import="cbnbas.dtr.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  <!--mstheme--><link rel="stylesheet" type="text/css" href="_themes/poetic/poet1111.css"><meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con = null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "DTR";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
  String dealer = "";
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
       thisday = rs.getString(3);
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
	String dt203 = request.getParameter("dt203");

	String dt217 = request.getParameter("dt217");
	String outputpath = "c:/cbnxml/dtr/";
	

	String newpath = outputpath + thisday ;
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

	
	if ( dt203.equals("1") ) {
           dtr203 d203 = new dtr203();
		new dtr203Reloaded("M06");
           d203.setDaystring(thisday);
           d203.setInstname(bankname);
           d203.setDealername(dealer);
           d203.setInstcode(bankcode);
	    d203.setOutputpath(outputpath);
           d203.setSignatory1(signatory1);
           d203.setSignatory2(signatory2);
           d203.setContactName(contactname);
           d203.setTelno(telno);
           d203.setExtno(extno);
           boolean test = d203.convert();
	}
       
	if ( dt217.equals("1") ) {
           dtr217 d217 = new dtr217();
           d217.setDaystring(thisday);
           d217.setInstname(bankname);
           d217.setDealername(dealer);
           d217.setInstcode(bankcode);
           d217.setOutputpath(outputpath);
           d217.setSignatory1(signatory1);
           d217.setSignatory2(signatory2);
           d217.setContactName(contactname);
           d217.setTelno(telno);
           d217.setExtno(extno);
           boolean test = d217.convert();
    }

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'dtr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>


