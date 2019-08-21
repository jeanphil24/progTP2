<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="superviseur.aspx.cs" Inherits="TP2.superviseur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>  
    <h1>
        Page du superviseur&nbsp;
        <asp:Literal ID="Lit" runat="server"></asp:Literal>
    </h1>
    <h2>
        Stagiaires :</h2>
        <br />
    <form id="form0" runat="server">
    <asp:GridView ID="gvStagiaires" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dsStagiaires" Width="894px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
            <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
            <asp:BoundField DataField="NomUtilisateur" HeaderText="NomUtilisateur" SortExpression="NomUtilisateur" />
            <asp:BoundField DataField="MotDePasse" HeaderText="MotDePasse" SortExpression="MotDePasse" Visible="False" />
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
    <asp:LinqDataSource ID="dsStagiaires" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" OrderBy="Nom" TableName="Stagiaires" EnableDelete="True" EnableInsert="True" EnableUpdate="True">
    </asp:LinqDataSource>
    <h2>Stages : </h2>
        <asp:GridView ID="gvStages" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="dsStages" ForeColor="Black" GridLines="Vertical" Width="891px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" />
                <asp:BoundField DataField="Début" HeaderText="Début" SortExpression="Début" />
                <asp:BoundField DataField="Fin" HeaderText="Fin" SortExpression="Fin" />
                <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" />
                <asp:BoundField DataField="SupersiveurId" HeaderText="SupersiveurId" SortExpression="SupersiveurId" />
                <asp:BoundField DataField="StagiaireId" HeaderText="StagiaireId" SortExpression="StagiaireId" />
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
        <asp:LinqDataSource ID="dsStages" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" OrderBy="Id" TableName="Stages">
        </asp:LinqDataSource>
        <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" OnClick="btnAjouter_Click" />
    </form>
    </body>
</html>
