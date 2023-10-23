<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegContCRUD.aspx.cs" Inherits="TP4_des3_EnzoMelian.RegContCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 44px">
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Agregar registro contable"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Elegir cuenta: "></asp:Label>
            <asp:ListBox ID="lBoxCuentaA" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMostrarCuenta" DataTextField="descripcion" DataValueField="id" Height="50px" Width="159px"></asp:ListBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingresar monto del registro contable:  "></asp:Label>
            <asp:TextBox ID="tBoxMontoA" runat="server" Height="18px" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Ingresar tipo: "></asp:Label>
            <asp:DropDownList ID="DDLtipo" runat="server" Height="28px" Width="102px" AutoPostBack="True">
                <asp:ListItem Value="0">debe</asp:ListItem>
                <asp:ListItem Value="1">haber</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblAgregarRegCont" runat="server" Text="-"></asp:Label>
            <br />
            <br />
            <asp:Button ID="BtnAgregarRegistroContable" runat="server" Height="25px" OnClick="BtnAgregarRegistroContable_Click" Text="Agregar" Width="67px" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mostrar, modificar y eliminar registro contable"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mostrar registro contable: "></asp:Label>
            <asp:ListBox ID="lBoxRegContMME" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMostrarRegCont" DataTextField="id" DataValueField="id" Height="42px" Width="136px" OnSelectedIndexChanged="lBoxRegContMME_SelectedIndexChanged"></asp:ListBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Cuenta del registro contable: "></asp:Label>
            <asp:TextBox ID="tBoxCuentaMME" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Monto del registro contable: "></asp:Label>
            <asp:TextBox ID="tBoxMontoMME" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Tipo de registro contable: "></asp:Label>
            <asp:DropDownList ID="DDLtipoMME" runat="server" Height="28px" Width="102px" AutoPostBack="True">
                <asp:ListItem Value="0">debe</asp:ListItem>
                <asp:ListItem Value="1">haber</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificarRegCont" runat="server" Text="Modificar" OnClick="btnModificarRegCont_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminarRegCont" runat="server" Text="Eliminar" OnClick="btnEliminarRegCont_Click" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblModElim1" runat="server" Text="-"></asp:Label>
            <br />
            <br />
            <asp:Button ID="BtnCDAtras" runat="server" Text="Volver" OnClick="BtnCDAtras_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSourceMostrarCuenta" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Cuentas]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [RegistrosContables] WHERE [id] = @id" DeleteCommand="DELETE FROM [RegistrosContables] WHERE [id] = @id" InsertCommand="INSERT INTO [RegistrosContables] ([idCuenta], [monto], [tipo]) VALUES (@idCuenta, @monto, @tipo)" UpdateCommand="UPDATE [RegistrosContables] SET [idCuenta] = @idCuenta, [monto] = @monto, [tipo] = @tipo WHERE [id] = @id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="lBoxRegContMME" Name="id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="lBoxCuentaA" Name="idCuenta" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="tBoxMontoA" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DDLtipo" Name="tipo" PropertyName="SelectedValue" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lBoxRegContMME" Name="id" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="tBoxCuentaMME" Name="idCuenta" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tBoxMontoMME" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DDLtipoMME" Name="tipo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="lBoxRegContMME" Name="id" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceMostrarRegCont" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [RegistrosContables]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
