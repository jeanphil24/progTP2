<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajouterPersonnel.aspx.cs" Inherits="TP2.ajouterStagiaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);</style>
    <title><asp:Literal ID="lit_titrePage" runat="server"></asp:Literal></title>
</head>
<body>
    <h1>
        <asp:Literal ID="lit_titre" runat="server"></asp:Literal>
    </h1>
    <form id="form_ajouterStagiaire" runat="server">
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="113px" />

      
        <asp:Label ID="lbl_nom" runat="server" Text="Nom : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_nom" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_nomVide" runat="server" ControlToValidate="txt_nom" ErrorMessage="Le champ &quot;nom&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_nomUtilisateur" runat="server" Text="Nom d'utilisateur : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
        <asp:TextBox ID="txt_nomUtilisateur" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_utilisateurVide" runat="server" ControlToValidate="txt_nom" ErrorMessage="Le champ &quot;nom d'utilisateur&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_telephone" runat="server" Text="Téléphone : " CssClass="labelsAjouteStagiaires"></asp:Label>
        <asp:TextBox ID="txt_telephone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_telephoneVide" runat="server" ControlToValidate="txt_telephone" ErrorMessage="Le champ &quot;téléphone&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="val_telephoneFormat" runat="server" ControlToValidate="txt_telephone" ErrorMessage="Le format du numéro de téléphone doit être 111-111-1111" ValidationExpression="^\d{3}-\d{3}-\d{4}$">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel" runat="server" Text="Courriel : " CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_courriel" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_courrielVide" runat="server" ControlToValidate="txt_courriel" ErrorMessage="Le champ &quot;courriel&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="val_courrielFormat" runat="server" ControlToValidate="txt_courriel" ErrorMessage="Le format du courriel n'est pas valide" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel0" runat="server" Text="Mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasse" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_motDePasseVide" runat="server" ControlToValidate="txt_motDePasse" ErrorMessage="Le champ &quot;mot de passe&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_courriel1" runat="server" Text="Repéter le mot de passe :" CssClass="labelsAjouteStagiaires"></asp:Label>
        
    
        <asp:TextBox ID="txt_motDePasseRepeter" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="val_motDePasseRepeterVide" runat="server" ControlToValidate="txt_motDePasseRepeter" ErrorMessage="Le champ &quot; repéter le mot de passe&quot; ne doit pas être vide">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="val_motDePasseRepeter" runat="server" ControlToCompare="txt_motDePasse" ControlToValidate="txt_motDePasseRepeter" ErrorMessage="Le 2e mot de passe n'est pas identique">*</asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="btn_confirmer" runat="server" Text="Confirmer" OnClick="btn_confirmer_Click" />
    </form>
</body>
</html>
