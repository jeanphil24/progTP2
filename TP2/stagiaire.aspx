<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stagiaire.aspx.cs" Inherits="TP2.stagiaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 247px;
        }
        #form2 {
            width: 245px;
        }
        #form3 {
            width: 243px;
        }
        #form4 {
            width: 240px;
        }
        .auto-style1 {
            width: 421px;
        }
    </style>
</head>
<body>
    <h1>
        Page du stagiaire
        <asp:Literal ID="Literal20" runat="server"></asp:Literal>
    </h1>
    <h2>
        Informations :
    </h2>
    <form id="form1" runat="server" class="auto-style1">
        
        <asp:Label ID="Label1" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="Literal2" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="Literal3" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="Literal4" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Modifier" OnClick="Button1_Click" />
    </form>
    
    <h2>
        Stages :
    </h2>
    <h2>
        <asp:Button ID="Button7" runat="server" Text="Ajouter" OnClick="Button7_Click" />
    </h2>
    <form id="form2" runat="server">
        
        <asp:Label ID="Label5" runat="server" Text="Titre : "></asp:Label> <asp:Literal ID="Literal5" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Date de début : "></asp:Label> <asp:Literal ID="Literal6" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Date de fin : "></asp:Label> <asp:Literal ID="Literal7" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Commentaires : "></asp:Label> <asp:Literal ID="Literal8" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Superviseur : "></asp:Label> <asp:Literal ID="Literal9" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Modifier" />
    </form>
    <form id="form3" runat="server">
        
        <asp:Label ID="Label10" runat="server" Text="Titre : "></asp:Label> <asp:Literal ID="Literal10" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Date de début : "></asp:Label> <asp:Literal ID="Literal11" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label12" runat="server" Text="Date de fin : "></asp:Label> <asp:Literal ID="Literal12" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Commentaires : "></asp:Label> <asp:Literal ID="Literal13" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Superviseur : "></asp:Label> <asp:Literal ID="Literal14" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Modifier" />
    </form>
    <form id="form4" runat="server">
        
        <asp:Label ID="Label15" runat="server" Text="Titre : "></asp:Label> <asp:Literal ID="Literal15" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Date de début : "></asp:Label> <asp:Literal ID="Literal16" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label17" runat="server" Text="Date de fin : "></asp:Label> <asp:Literal ID="Literal17" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label18" runat="server" Text="Commentaires : "></asp:Label> <asp:Literal ID="Literal18" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label19" runat="server" Text="Superviseur : "></asp:Label> <asp:Literal ID="Literal19" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button4" runat="server" Text="Modifier" />
    </form>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" EntityTypeName="">
    </asp:LinqDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
