<%@ page language="java" import="cbnbas.sdfir.*, java.sql.*, java.io.*" %>
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
  String odbcName = "SBR";
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
  String FinDate="";
  String CBN_NDIC_LAST_EXAM_DATE="";

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
//	String sb1900 = request.getParameter("sb1900");
//	String sb1905 = request.getParameter("sb1905");
	String sb1910 = request.getParameter("sb1910");
	String sb1920 = request.getParameter("sb1920");
	String sb1930 = request.getParameter("sb1930");
	String sb1940 = request.getParameter("sb1940");
	String sb1950 = request.getParameter("sb1950");

	String outputpath = "c:/cbnxml/sdfir/";

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

/*	if ( sb1900.equals("1") ) {
           sbr1900 s1900 = new sbr1900();
           s1900.setDaystring(thisday);
           s1900.setInstname(bankname);
           s1900.setInstcode(bankcode);
           s1900.setOutputpath(outputpath);
           s1900.setSignatory1(signatory1);
           s1900.setSignatory2(signatory2);
           s1900.setContactName(contactname);
           s1900.setTelno(telno);
           s1900.setExtno(extno);
           boolean test = s1900.convert();
	}

	if ( sb1905.equals("1") ) {
           sbr1905 s1905 = new sbr1905();
           s1905.setDaystring(thisday);
           s1905.setInstname(bankname);
           s1905.setInstcode(bankcode);
           s1905.setOutputpath(outputpath);
           s1905.setSignatory1(signatory1);
           s1905.setSignatory2(signatory2);
           s1905.setContactName(contactname);
           s1905.setTelno(telno);
           s1905.setExtno(extno);
           boolean test = s1905.convert();
	}
*/
	if ( sb1910.equals("1") ) {
           sdfir1910 s1910 = new sdfir1910();
           s1910.setDayString(thisday);
           s1910.setInstname(bankname);
           s1910.setInstcode(bankcode);
           s1910.setOutputpath(outputpath);
           s1910.setSignatory1(signatory1);
           s1910.setSignatory2(signatory2);
           s1910.setContactName(contactname);
           s1910.setTelno(telno);
           s1910.setExtno(extno);
           boolean test = s1910.convert();
	}

	if ( sb1920.equals("1") ) {
           sdfir1920 s1920 = new sdfir1920();
           s1920.setDayString(thisday);
           s1920.setInstname(bankname);
           s1920.setInstcode(bankcode);
           s1920.setOutputpath(outputpath);
           s1920.setSignatory1(signatory1);
           s1920.setSignatory2(signatory2);
           s1920.setContactName(contactname);
           s1920.setTelno(telno);
           s1920.setExtno(extno);
           boolean test = s1920.convert();
	}

	if ( sb1930.equals("1") ) {
           sdfir1930 s1930 = new sdfir1930();
           s1930.setDayString(thisday);
           s1930.setInstname(bankname);
           s1930.setInstcode(bankcode);
           s1930.setOutputpath(outputpath);
           s1930.setSignatory1(signatory1);
           s1930.setSignatory2(signatory2);
           s1930.setContactName(contactname);
           s1930.setTelno(telno);
           s1930.setExtno(extno);
           boolean test = s1930.convert();
	}

	if ( sb1940.equals("1") ) {
           sdfir1940 s1940 = new sdfir1940();
           s1940.setDayString(thisday);
           s1940.setInstname(bankname);
           s1940.setInstcode(bankcode);
           s1940.setOutputpath(outputpath);
           s1940.setSignatory1(signatory1);
           s1940.setSignatory2(signatory2);
           s1940.setContactName(contactname);
           s1940.setTelno(telno);
           s1940.setExtno(extno);
           boolean test = s1940.convert();
	}

	if ( sb1950.equals("1") ) {
           sdfir1950 s1950 = new sdfir1950();
		new sdfir1950Reloaded();
           s1950.setDayString(thisday);
           s1950.setInstname(bankname);
           s1950.setInstcode(bankcode);
           s1950.setOutputpath(outputpath);
           s1950.setSignatory1(signatory1);
           s1950.setSignatory2(signatory2);
           s1950.setContactName(contactname);
           s1950.setTelno(telno);
           s1950.setExtno(extno);
           boolean test = s1950.convert();
	}

if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'sdfir_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>

