<%
// ssl url
String scheme = request.getScheme();
String serverName = request.getServerName();
int serverPort = request.getServerPort();
String contextPath = request.getContextPath();  // includes leading forward slash
String sslUrl = "";
if ( !"localhost".equals(serverName) && !"112.217.238.123".equals(serverName) ) {
    sslUrl = "https://" + serverName + contextPath;
}
pageContext.setAttribute("sslUrl", sslUrl);

%>
