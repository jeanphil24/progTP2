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
        <asp:Literal ID="Literal25" runat="server"></asp:Literal>
    </h1>
    <h2>
        Stagiaires :</h2>
        <asp:Button ID="Button2" runat="server" Text="Ajouter" />
    <form id="form2" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="Literal3" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="Literal4" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button5" runat="server" Text="Voir les stages" />
        <asp:Button ID="Button1" runat="server" Text="Modifier" OnClick="Button1_Click" />
    </form>
    <form id="form3" runat="server">
        
        <asp:Label ID="Label5" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="Literal5" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="Literal6" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="Literal7" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="Literal8" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button6" runat="server" Text="Voir les stages" />
        <asp:Button ID="Button3" runat="server" Text="Modifier"  />
    </form>
    <form id="form4" runat="server">
        
        <asp:Label ID="Label9" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="Literal9" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="Literal10" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="Literal11" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="Literal12" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button7" runat="server" Text="Voir les stages" />
        <asp:Button ID="Button4" runat="server" Text="Modifier" />
    </form>
    </form>
</body>
</html>
