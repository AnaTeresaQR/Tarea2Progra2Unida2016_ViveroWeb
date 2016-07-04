
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try {
        String msj = (String) request.getParameter("msj");
        String optionS = (String) request.getParameter("optionselect").trim();

        if (optionS != null) {
            int valueSel = Integer.parseInt(optionS);
            if (msj == null) {
                msj = "";
            } else {
                switch (valueSel) {
                    case 1:
%>
<p><%=msj%></p>
<%
        break;
    case 2:
%>
<script>alert('<%=msj%>');</script>
<%
                        break;
                }
            }
        }
    } catch (Exception e) {
    }
%>

