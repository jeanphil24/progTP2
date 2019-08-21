<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrateur.aspx.cs" Inherits="TP2.administrateur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);</style>
    <title><asp:Literal ID="lit_titrePage" runat="server"></asp:Literal></title>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        <asp:Literal ID="lit_titre" runat="server"></asp:Literal>
    </h1>
        <span style="COLOR: green;font-weight:bold;"><asp:Literal  ID="lit_messageAjout" runat="server"></asp:Literal></span>
    <h2>
        Stagiaires :
    </h2>
        <asp:Button ID="btn_ajouterStagiaire" runat="server" OnClick="btn_ajouterStagiaire_Click" Text="Ajouter" />
        <br />
        <asp:GridView ID="grid_stagiaires" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="ds_stagiaires" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
                <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
                <asp:BoundField DataField="NomUtilisateur" HeaderText="NomUtilisateur" SortExpression="NomUtilisateur" />
                <asp:BoundField DataField="MotDePasse" HeaderText="MotDePasse" SortExpression="MotDePasse" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>

        <asp:LinqDataSource ID="ds_stagiaires" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="Nom" TableName="Stagiaires">
        </asp:LinqDataSource>

    <h2>
        Superviseurs :
    </h2>
        <asp:Button ID="btn_ajoutSuperviseur" runat="server" Text="Ajouter" OnClick="btn_ajoutSuperviseur_Click" />
        <br />
        <asp:GridView ID="grid_superviseurs" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ds_superviseurs" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
                <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
                <asp:BoundField DataField="NomUtilisateur" HeaderText="NomUtilisateur" SortExpression="NomUtilisateur" />
                <asp:BoundField DataField="MotDePasse" HeaderText="MotDePasse" SortExpression="MotDePasse" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:LinqDataSource ID="ds_superviseurs" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="Nom" TableName="Superviseurs">
        </asp:LinqDataSource>
    </form>

    </body>
</html>
