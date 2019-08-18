<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TP2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);</style>
    <title>TP2 - Page de connexion</title>
</head>
<body>
    <h1>
        Connectez-vous !
    </h1>
    <form id="form1" runat="server" method="post">
        <div>
            <asp:RadioButtonList ID="radio_typeUsager" runat="Server">
                            <asp:ListItem Text="Stagiaire" Value="Stagiaire"></asp:ListItem>
                            <asp:ListItem Text="Superviseur" Value="Superviseur"></asp:ListItem>
                            <asp:ListItem Text="Administrateur" Value="Administrateur"></asp:ListItem>
                        </asp:RadioButtonList>
            <br />
            <asp:Label CssClass="accueil_label" ID="lbl_usager" runat="server" Text="Label">Nom d'usager :</asp:Label>
            <asp:TextBox ID="txt_usager" runat="server"></asp:TextBox>
            <span style="COLOR: red"><asp:Literal ID="lit_usager" runat="server"></asp:Literal></span>
            <br />
            <br />
            <asp:Label CssClass="accueil_label" ID="lbl_motDePasse" runat="server" Text="Label">Mot de passe :</asp:Label>
            <asp:TextBox ID="txt_motDePasse" runat="server"></asp:TextBox>
            <span style="COLOR: red"><asp:Literal ID="lit_motDePasse" runat="server" ></asp:Literal></span>
            <br />
            <br />
            <asp:Button ID="btn_submit" runat="server" Text="Connexion" />
            
        </div>
    </form>
</body>
</html>
