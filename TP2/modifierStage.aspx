<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifierStage.aspx.cs" Inherits="TP2.modifierStage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>
        Ajouter / Modifer un stage
    </h1>
    <form id="form1" runat="server">
        
        <asp:Label ID="lblTitre" runat="server" Text="Titre : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTitre" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblDebut" runat="server" Text="Date de début : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDebut" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblFin" runat="server" Text="Date de fin : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFin" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <br />
        <asp:Label ID="lblCommentaire" runat="server" Text="Commentaire : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCommentaire" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNom" runat="server" Text="Nom de superviseur : "></asp:Label>
        
    &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer" />
        
    </form>
</body>
</html>
