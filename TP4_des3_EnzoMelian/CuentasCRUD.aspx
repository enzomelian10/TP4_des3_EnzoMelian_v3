<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CuentasCRUD.aspx.cs" Inherits="TP4_des3_EnzoMelian.CuentasCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 44px">
            <br><br><asp:Label ID="Label2" runat="server" Text="Agregar cuenta"></asp:Label>
            <br><br>
            <asp:Label ID="Label1" runat="server" Text="Ingresar descripción de cuenta: "></asp:Label>
            <asp:TextBox ID="tBoxDescripcionA" runat="server"></asp:TextBox>
            <asp:Button ID="BtnAgregarCuenta" runat="server" Height="25px" Text="Agregar" Width="67px" OnClick="BtnAgregarCuenta_Click" />
            &nbsp;
            <asp:Label ID="lblValidAgregar" runat="server" Text="-"></asp:Label>
            <br />
            <br />
            <br><br>
            <asp:Label ID="Label3" runat="server" Text="Mostrar, modificar y eliminar cuenta"></asp:Label>
            <br><br> 
            <asp:Label ID="Label4" runat="server" Text="Mostrar cuenta: "></asp:Label>
            <asp:ListBox ID="lBoxCuenta" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="id" AutoPostBack="True" Height="45px" OnSelectedIndexChanged="lBoxCuenta_SelectedIndexChanged1" Width="147px"></asp:ListBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Descripción de la cuenta: "></asp:Label>
            <asp:TextBox ID="tboxDescripMME" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnModificarCuenta" runat="server" Text="Modificar" OnClick="btnModificarCuenta_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnEliminarCuenta" runat="server" Text="Eliminar" OnClick="btnEliminarCuenta_Click" />
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblModElim" runat="server" Text="-"></asp:Label>
            <br>
            <asp:Button ID="BtnCDAtras" runat="server" Text="Volver" OnClick="BtnCDAtras_Click" />
        </br>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" DeleteCommand="DELETE FROM [Cuentas] WHERE [id] = @id" InsertCommand="INSERT INTO [Cuentas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT * FROM [Cuentas]" UpdateCommand="UPDATE [Cuentas] SET [descripcion] = @descripcion WHERE [id] = @id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="lBoxCuenta" Name="id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="tBoxDescripcionA" Name="descripcion" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="tboxDescripMME" Name="descripcion" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lBoxCuenta" Name="id" PropertyName="SelectedValue" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceMostrar" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Cuentas] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lBoxCuenta" Name="id" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
