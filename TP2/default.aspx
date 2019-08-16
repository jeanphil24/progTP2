<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TP2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            Nom d&#39;usager :&nbsp;
            <asp:TextBox ID="txt_usager" runat="server"></asp:TextBox>
            <span style="COLOR: red"><asp:Literal ID="lit_usager" runat="server"></asp:Literal></span>
            <br />
            <br />
            Mot de passe :&nbsp;
            <asp:TextBox ID="txt_motDePasse" runat="server"></asp:TextBox>
            <span style="COLOR: red"><asp:Literal ID="lit_motDePasse" runat="server" ></asp:Literal></span>
            <br />
            <br />
            <asp:Button ID="btn_submit" runat="server" Text="Connexion" />
            
        </div>
    </form>
</body>
</html>
