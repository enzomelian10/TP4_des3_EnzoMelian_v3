<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="TP4_des3_EnzoMelian.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CuentasCRUD.aspx">Cuentas CRUD</asp:HyperLink>
        <br><br>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RegContCRUD.aspx">Registros Contables CRUD</asp:HyperLink>
    </form>
</body>
</html>
