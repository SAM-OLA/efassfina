<%@ page language="java" import="cbnbas.crms.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
    <!--mstheme--><link rel="stylesheet" href="file:///C:/DOCUME~1/FAVOUR~1/LOCALS~1/Temp/FrontPageTempDir/mstheme/poetic/poet1111.css">
    <meta name="Microsoft Theme" content="poetic 1111, default">
</head>
<body>
<%
  Connection con=null;
  Statement st = null;
  ResultSet rs = null;
  String odbcName = "CRMS";
  String odbcprofile = "jdbc:odbc:"+odbcName;
  String bankname = "";
  String bankcode = "";
  String thisday = "";
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

 	String cr100 = request.getParameter("crms100");
	String cr200= request.getParameter("crms200");
	String cr201 = request.getParameter("crms201");
	String cr300 = request.getParameter("crms300");
	String cr301 = request.getParameter("crms301");
	String cr400 = request.getParameter("crms400");

	String outputpath = "c:/cbnxml/crms/";

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

	if ( cr100.equals("1") ) {
           crms100 c100 = new crms100();
           c100.setDayString(thisday);
           c100.setInstname(bankname);
           c100.setInstcode(bankcode);
           c100.setOutputpath(outputpath);
           c100.setSignatory1(signatory1);
           c100.setSignatory2(signatory2);
           c100.setContactName(contactname);
           c100.setTelno(telno);
           c100.setExtno(extno);
           boolean test = c100.convert();
	}
	if ( cr200.equals("1") ) {
           crms200 c200 = new crms200();
           c200.setDayString(thisday);
           c200.setInstname(bankname);
           c200.setInstcode(bankcode);
           c200.setOutputpath(outputpath);
           c200.setSignatory1(signatory1);
           c200.setSignatory2(signatory2);
           c200.setContactName(contactname);
           c200.setTelno(telno);
           c200.setExtno(extno);
           boolean test = c200.convert();
	}
	if ( cr201.equals("1") ) {
           crms201 c201 = new crms201();
           c201.setDayString(thisday);
           c201.setInstname(bankname);
           c201.setInstcode(bankcode);
	   c201.setOutputpath(outputpath);
           c201.setSignatory1(signatory1);
           c201.setSignatory2(signatory2);
           c201.setContactName(contactname);
           c201.setTelno(telno);
           c201.setExtno(extno);
           boolean test = c201.convert();
	}
	if ( cr300.equals("1") ) {
           crms300 c300 = new crms300();
           c300.setDayString(thisday);
           c300.setInstname(bankname);
           c300.setInstcode(bankcode);
           c300.setOutputpath(outputpath);
           c300.setSignatory1(signatory1);
           c300.setSignatory2(signatory2);
           c300.setContactName(contactname);
           c300.setTelno(telno);
           c300.setExtno(extno);
           boolean test = c300.convert();
	}
	if ( cr301.equals("1") ) {
           crms301 c301 = new crms301();
           c301.setDayString(thisday);
           c301.setInstname(bankname);
           c301.setInstcode(bankcode);
           c301.setOutputpath(outputpath);
           c301.setSignatory1(signatory1);
           c301.setSignatory2(signatory2);
           c301.setContactName(contactname);
           c301.setTelno(telno);
           c301.setExtno(extno);
           boolean test = c301.convert();
	}
	if ( cr400.equals("1") ) {
           crms400 c400 = new crms400();
           c400.setDayString(thisday);
           c400.setInstname(bankname);
           c400.setInstcode(bankcode);
           c400.setOutputpath(outputpath);
           c400.setSignatory1(signatory1);
           c400.setSignatory2(signatory2);
           c400.setContactName(contactname);
           c400.setTelno(telno);
           c400.setExtno(extno);
           boolean test = c400.convert();
	}

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'crms_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>