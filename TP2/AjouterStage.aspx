<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjouterStage.aspx.cs" Inherits="TP2.modifierStage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);
        </style>
    <title></title>

</head>
<body>
    <h1>
        Ajouter un stage
    </h1>
    <form id="form1" runat="server">
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="77px" />
        
        <asp:Label ID="lblTitre" runat="server" Text="Titre : " CssClass="labelsAjouteStages"></asp:Label>
       
        <asp:TextBox ID="txtTitre" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valTitre" runat="server" ErrorMessage="Titre requis" ControlToValidate="txtTitre">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lblDebut" runat="server" Text="Date de début : " CssClass="labelsAjouteStages"></asp:Label>

        <asp:TextBox ID="txtDebut" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="valDebut" runat="server" ErrorMessage="Date de début requise" ControlToValidate="txtDebut">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label ID="lblFin" runat="server" Text="Date de fin : " CssClass="labelsAjouteStages"></asp:Label>
       
        <asp:TextBox ID="txtFin" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <asp:CompareValidator ID="valFin" runat="server" ControlToCompare="txtDebut" ControlToValidate="txtFin" ErrorMessage="Date de fin invalide" Operator="GreaterThanEqual">*</asp:CompareValidator>
        <br />
        <br />

        <asp:Label ID="lblCommentaire" runat="server" Text="Commentaire : " CssClass="labelsAjouteStages"></asp:Label>
        
        <asp:TextBox ID="txtCommentaire" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSuperviseur" runat="server" Text="Superviseur :" CssClass="labelsAjouteStages"></asp:Label>
        

        <asp:DropDownList ID="DrpSuperviseur" runat="server" DataSourceID="dsSuperviseurs" DataTextField="Nom" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <br />

        <asp:Label ID="lblStagiaire" runat="server" CssClass="labelsAjouteStages" Text="Stagiaire : "></asp:Label>

        <asp:DropDownList ID="DrpStagiaire" runat="server" DataSourceID="dsStagiaires" DataTextField="Nom" DataValueField="Id">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnConfirmer" runat="server" Text="Confirmer" OnClick="btnConfirmer_Click" />
        
        <asp:LinqDataSource ID="dsSuperviseurs" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" OrderBy="Nom" TableName="Superviseurs">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="dsStagiaires" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" OrderBy="Nom" TableName="Stagiaires">
        </asp:LinqDataSource>
        
    </form>
</body>
</html>
