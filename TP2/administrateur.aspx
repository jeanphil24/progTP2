<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrateur.aspx.cs" Inherits="TP2.administrateur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            width: 235px;
        }
        #form2 {
            width: 235px;
        }
        #form3 {
            width: 233px;
        }
    </style>
</head>
<body>
    <h1>
        Page de l&#39;administrateur&nbsp;
        <asp:Literal ID="Literal25" runat="server"></asp:Literal>
    </h1>
    <h2>
        Stagiaires :
    </h2>
    <asp:Button ID="Button2" runat="server" Text="Ajouter" />
    <form id="form1" runat="server">
        
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
    <form id="form2" runat="server">
        
        <asp:Label ID="Label5" runat="server" Text="Nom : "></asp:Label> <asp:Literal ID="Literal5" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Telephone : "></asp:Label> <asp:Literal ID="Literal6" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Matricule : "></asp:Label> <asp:Literal ID="Literal7" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Courriel : "></asp:Label> <asp:Literal ID="Literal8" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Modifier"  />
    </form>
    <h2>Superviseurs : </h2>
    <asp:Button ID="Button5" runat="server" OnClick="Button1_Click" Text="Ajouter" />
    <form id="form4" runat="server">
        <asp:Label ID="Label13" runat="server" Text="Nom : "></asp:Label>
        <asp:Literal ID="Literal13" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Telephone : "></asp:Label>
        <asp:Literal ID="Literal14" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label16" runat="server" Text="Courriel : "></asp:Label>
        <asp:Literal ID="Literal16" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button6" runat="server" OnClick="Button1_Click" Text="Modifier" />
    </form>
    <form id="form5" runat="server">
        <asp:Label ID="Label17" runat="server" Text="Nom : "></asp:Label>
        <asp:Literal ID="Literal17" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label18" runat="server" Text="Telephone : "></asp:Label>
        <asp:Literal ID="Literal18" runat="server"></asp:Literal>
        <br />
        <asp:Label ID="Label20" runat="server" Text="Courriel : "></asp:Label>
        <asp:Literal ID="Literal20" runat="server"></asp:Literal>
        <br />
        <asp:Button ID="Button7" runat="server" OnClick="Button1_Click" Text="Modifier" />
    </form>
    </body>
</html>
