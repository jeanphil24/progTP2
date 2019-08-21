<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterStage.aspx.cs" Inherits="TP2.modifierStage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);
        .auto-style1 {
            display: inline-block;
            width: 431px;
        }
    </style>
    <title></title>

</head>
<body>
    <h1>
        Ajouter un stage
    </h1>
    <form id="form1" runat="server">
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        
        <asp:Label ID="lblTitre" runat="server" Text="Titre : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTitre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valTitre" runat="server" ErrorMessage="Titre requis" ControlToValidate="txtTitre">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblDebut" runat="server" Text="Date de début : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDebut" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valDebut" runat="server" ErrorMessage="Date de début requise" ControlToValidate="txtDebut">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblFin" runat="server" Text="Date de fin : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtFin" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <asp:CompareValidator ID="valFin" runat="server" ControlToCompare="txtDebut" ControlToValidate="txtFin" ErrorMessage="Date de fin invalide" Operator="GreaterThanEqual">*</asp:CompareValidator>
        <br />
        <asp:Label ID="lblCommentaire" runat="server" Text="Commentaire : "></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCommentaire" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblNom" runat="server" Text="Superviseur : "></asp:Label>
        
    &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DrpSuperviseur" runat="server">
        </asp:DropDownList>
        <br />
        Stagiaire :
        <asp:DropDownList ID="DrpStagiaire" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer" OnClick="btnConfirmer_Click" />
        
    </form>
</body>
</html>
