<%@ page language="java" import="cbnbas.spmbr.*, java.sql.*, java.io.*" %>
<html>
  <head>
    <title>Generating XML Files, Please Wait ...</title>
  	<meta name="Microsoft Theme" content="poetic 1111, default">
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
  String todate = "";
  String fromdate = "";
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
//	String sb1900 = request.getParameter("sb1900");
//	String sb1905 = request.getParameter("sb1905");
	String sb1910 = request.getParameter("sb1910");
	String sb1910A = request.getParameter("sb1910A");
	String sb1910B = request.getParameter("sb1910B");
	String sb1910C = request.getParameter("sb1910C");
	String sb1910D = request.getParameter("sb1910D");
	String sb1910E = request.getParameter("sb1910E");
	String sb1920 = request.getParameter("sb1920");
	String sb1930 = request.getParameter("sb1930");
	String sb1940 = request.getParameter("sb1940");
	String sb1950 = request.getParameter("sb1950");
	String sb1960 = request.getParameter("sb1960");
	String sb1970 = request.getParameter("sb1970");
	String sb1980 = request.getParameter("sb1980");
	
	String outputpath = "c:/cbnxml/spmbr/";

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

/*	if ( sb1900.equals("1") ) {
           sbr1900 s1900 = new sbr1900();
           s1900.setfromDate(fromdate);
           s1900.settoDate(todate);
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
           s1905.setfromDate(fromdate);
           s1905.settoDate(todate);
           s1905.setInstname(bankname);
           s1905.setInstcode(bankcode);
           s1905.setOutputpath(outputpath);
           s1905.setSignatory1(signatory1);
           s1905.setSignatory2(signatory2);
           s1905.setContactName(contactname);
           s1905.setTelno(telno);
           s1905.setExtno(extno);
           boolean test = s1905.convert();
	}*/

	if ( sb1910.equals("1") ) {
           spmbr1910 s1910 = new spmbr1910();
           s1910.setfromDate(fromdate);
           s1910.settoDate(todate);
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
	if ( sb1910A.equals("1") ) {
           spmbr1910A s1910A = new spmbr1910A();
           s1910A.setfromDate(fromdate);
           s1910A.settoDate(todate);
           s1910A.setInstname(bankname);
           s1910A.setInstcode(bankcode);
           s1910A.setOutputpath(outputpath);
           s1910A.setSignatory1(signatory1);
           s1910A.setSignatory2(signatory2);
           s1910A.setContactName(contactname);
           s1910A.setTelno(telno);
           s1910A.setExtno(extno);
           boolean test = s1910A.convert();
	}
	if ( sb1910B.equals("1") ) {
           spmbr1910B s1910B = new spmbr1910B();
           s1910B.setfromDate(fromdate);
           s1910B.settoDate(todate);
           s1910B.setInstname(bankname);
           s1910B.setInstcode(bankcode);
           s1910B.setOutputpath(outputpath);
           s1910B.setSignatory1(signatory1);
           s1910B.setSignatory2(signatory2);
           s1910B.setContactName(contactname);
           s1910B.setTelno(telno);
           s1910B.setExtno(extno);
           boolean test = s1910B.convert();
	}
	if ( sb1910C.equals("1") ) {
           spmbr1910C s1910C = new spmbr1910C();
           s1910C.setfromDate(fromdate);
           s1910C.settoDate(todate);
           s1910C.setInstname(bankname);
           s1910C.setInstcode(bankcode);
           s1910C.setOutputpath(outputpath);
           s1910C.setSignatory1(signatory1);
           s1910C.setSignatory2(signatory2);
           s1910C.setContactName(contactname);
           s1910C.setTelno(telno);
           s1910C.setExtno(extno);
           boolean test = s1910C.convert();
	}
	if ( sb1910D.equals("1") ) {
           spmbr1910D s1910D = new spmbr1910D();
           s1910D.setfromDate(fromdate);
           s1910D.settoDate(todate);
           s1910D.setInstname(bankname);
           s1910D.setInstcode(bankcode);
           s1910D.setOutputpath(outputpath);
           s1910D.setSignatory1(signatory1);
           s1910D.setSignatory2(signatory2);
           s1910D.setContactName(contactname);
           s1910D.setTelno(telno);
           s1910D.setExtno(extno);
           boolean test = s1910D.convert();
	}
	if ( sb1910E.equals("1") ) {
           spmbr1910E s1910E = new spmbr1910E();
           s1910E.setfromDate(fromdate);
           s1910E.settoDate(todate);
           s1910E.setInstname(bankname);
           s1910E.setInstcode(bankcode);
           s1910E.setOutputpath(outputpath);
           s1910E.setSignatory1(signatory1);
           s1910E.setSignatory2(signatory2);
           s1910E.setContactName(contactname);
           s1910E.setTelno(telno);
           s1910E.setExtno(extno);
           boolean test = s1910E.convert();
	}

	if ( sb1920.equals("1") ) {
           spmbr1920 s1920 = new spmbr1920();
           s1920.setfromDate(fromdate);
           s1920.settoDate(todate);
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
           spmbr1930 s1930 = new spmbr1930();
           s1930.setfromDate(fromdate);
           s1930.settoDate(todate);
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
           spmbr1940 s1940 = new spmbr1940();
           s1940.setfromDate(fromdate);
           s1940.settoDate(todate);
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
           spmbr1950 s1950 = new spmbr1950();
		//new spmbr1950Reloaded();
           s1950.setfromDate(fromdate);
           s1950.settoDate(todate);
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
	if ( sb1960.equals("1") ) {
           spmbr1960 s1960 = new spmbr1960();
		//new spmbr1960Reloaded();
           s1960.setfromDate(fromdate);
           s1960.settoDate(todate);
           s1960.setInstname(bankname);
           s1960.setInstcode(bankcode);
           s1960.setOutputpath(outputpath);
           s1960.setSignatory1(signatory1);
           s1960.setSignatory2(signatory2);
           s1960.setContactName(contactname);
           s1960.setTelno(telno);
           s1960.setExtno(extno);
           boolean test = s1960.convert();
	}
	if ( sb1970.equals("1") ) {
           spmbr1970 s1970 = new spmbr1970();
		//new spmbr1970Reloaded();
           s1970.setfromDate(fromdate);
           s1970.settoDate(todate);
           s1970.setInstname(bankname);
           s1970.setInstcode(bankcode);
           s1970.setOutputpath(outputpath);
           s1970.setSignatory1(signatory1);
           s1970.setSignatory2(signatory2);
           s1970.setContactName(contactname);
           s1970.setTelno(telno);
           s1970.setExtno(extno);
           boolean test = s1970.convert();
	}
	if ( sb1980.equals("1") ) {
           spmbr1980 s1980 = new spmbr1980();
		//new spmbr1980Reloaded();
           s1980.setfromDate(fromdate);
           s1980.settoDate(todate);
           s1980.setInstname(bankname);
           s1980.setInstcode(bankcode);
           s1980.setOutputpath(outputpath);
           s1980.setSignatory1(signatory1);
           s1980.setSignatory2(signatory2);
           s1980.setContactName(contactname);
           s1980.setTelno(telno);
           s1980.setExtno(extno);
           boolean test = s1980.convert();
	}




if ( tester ) {
  %>

  <SCRIPT Language = "JavaScript">
    alert("Files have been generated into " + "<%=outputpath%>");
    window.location = 'spmbr_select.jsp';
    </SCRIPT>
    <%
    }
 %>
  </body>
</html>

