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
    </h1>
    <form id="form_ajouterStagiaire" runat="server">
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        
        <asp:Label ID="lbl_matricule" runat="server" Text="Matricule : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_matricule" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_matricule" runat="server" ControlToValidate="txt_matricule" ErrorMessage="Le champ &quot;matricule&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_nom" runat="server" Text="Nom : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_nomVide" runat="server" ControlToValidate="txt_nom" ErrorMessage="Le champ &quot;nom&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_telephone" runat="server" Text="Téléphone : " CssClass="labelsAjouteStagiaires"></asp:Label>
        <asp:TextBox ID="txt_telephone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_telephoneVide" runat="server" ControlToValidate="txt_telephone" ErrorMessage="Le champ &quot;téléphone&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="val_telephoneFormat" runat="server" ControlToValidate="txt_telephone" ErrorMessage="Le format du numéro de téléphone n'est pas valide">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel" runat="server" Text="Courriel : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_courriel" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_courrielVide" runat="server" ControlToValidate="txt_courriel" Enabled="False" ErrorMessage="Le champ &quot;courriel&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="val_courrielFormat" runat="server" ControlToValidate="txt_courriel" ErrorMessage="Le format du courriel n'est pas valide">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel0" runat="server" Text="Mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasse" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="val_motDePasse" runat="server" ControlToValidate="txt_motDePasse" ErrorMessage="Le champ &quot;mot de passe&quot; ne doit pas être vide">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel1" runat="server" Text="Repéter le mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasseRepeter" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="val_motDePasseRepeter" runat="server" ControlToCompare="txt_motDePasse" ControlToValidate="txt_motDePasseRepeter" ErrorMessage="Le 2e mot de passe n'est pas identique">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Confirmer" />
    </form>
</body>
</html>
