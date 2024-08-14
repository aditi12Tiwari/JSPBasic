<html>
<body>
<h2>Hello World!</h2>

<%
    //to print the name
    out.print("Hi I am Aditi Tiwari");

%>
<br>
<%--JSP expression --%>
<%= "My name is Aditi Tiwari"%>
<br>
<%--Working on the Datatypes in JSP--%>
<%
    String name="Aditi Tiwari";
    out.print("My friend name is " + name);
%>
<%= "without out function:" + name%>
<br>
<%
    int a = 4;
    int b = 7;
    out.print("Sum is : "+ (a+b));
%>
<br>

<%--function in jsp--%>
<%-- call methods in jsp--%>
<%!
    int square(int n){
        return n*n;
    }
%>
<%= "Square is " + square(2)%>

<br>
<%--table of 10 --%>
<%!
    int printTable(int n,int number) {
        return n * number;
    }
%>
<%  for(int i=1;i<=10;i++){
    out.print(5+"*"+i+"="+printTable(5,i)+"<br>");
}
%>
<br>
<%
    String data= request.getParameter("username");
    out.print("my username is "+ data);
    response.sendRedirect("http://google.com");
%>

</body>
</html>
