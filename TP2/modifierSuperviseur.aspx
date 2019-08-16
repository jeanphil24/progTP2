<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifierSuperviseur.aspx.cs" Inherits="TP2.modifierSuperviseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>
        Ajouter / Modifer un superviseur
    </h1>
    <form id="form1" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="Nom : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Téléphone : "></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Courriel : "></asp:Label>
        
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Confirmer" />
        
    </form>
</body>
</html>
