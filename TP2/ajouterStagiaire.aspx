<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajouterStagiaire.aspx.cs" Inherits="TP2.ajouterStagiaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);</style>
    <title>Ajouter un stagiaire</title>
</head>
<body>
    <h1>
        Ajouter un stagiaire
    </h1><br />
    <form id="form_ajouterStagiaire" runat="server">
        
        <asp:Label ID="lbl_matricule" runat="server" Text="Matricule : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_matricule" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_nom" runat="server" Text="Nom : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_telephone" runat="server" Text="Téléphone : " CssClass="labelsAjouteStagiaires"></asp:Label>
        <asp:TextBox ID="txt_telephone" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_courriel" runat="server" Text="Courriel : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_courriel" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_courriel0" runat="server" Text="Mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasse" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lbl_courriel1" runat="server" Text="Repéter le mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasseRepeter" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Confirmer" />
    </form>
</body>
</html>
