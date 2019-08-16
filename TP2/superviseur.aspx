<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="superviseur.aspx.cs" Inherits="TP2.superviseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Page du superviseur&nbsp;
        <asp:Literal ID="Lit" runat="server"></asp:Literal>
    </h1>
    <h2>
        Stagiaires :</h2>
        <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" />
    <form id="form2" runat="server">
        
        <asp:Label ID="lblNom" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="litNom" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblTel" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="litTel" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblMatricule" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="litMatricule" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="lblCourriel" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="litCourriel" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="btnVoirStages" runat="server" Text="Voir les stages" />
        <asp:Button ID="btnModifierStagiaire" runat="server" Text="Modifier" OnClick="Button1_Click" />
 
        
        <br />
        <br />
        <br />
    </form>
    </form>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</body>
</html>
