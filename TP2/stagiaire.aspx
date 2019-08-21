<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stagiaire.aspx.cs" Inherits="TP2.stagiaire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>@import url(format.css);</style>
    <title>Page du stagiaire</title>
</head>
<body>
    <h1>
        Page du stagiaire
        :
        <asp:Literal ID="litNom1" runat="server"></asp:Literal>
    </h1>
    <h2>
        Informations :
    </h2>
    <form id="form1" runat="server" class="auto-style1">
        
        <asp:Label ID="lbl_matricule" runat="server" Text="Matricule : " CssClass="labels-Stagiaire"></asp:Label> <asp:Literal ID="litMatricule" runat="server"></asp:Literal>
        <br />
        <br />
        Nom d&#39;utilisateur: <asp:Literal ID="litutilisateur" runat="server"></asp:Literal>
        <br />
        <br />
        
        <asp:Label ID="lbl_nom" runat="server" Text="Nom : " CssClass="labels-Stagiaire"></asp:Label> <asp:Literal ID="litNom2" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="lbl_telephone" runat="server" Text="Telephone : " CssClass="labels-Stagiaire"></asp:Label> <asp:Literal ID="litTelephone" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Label ID="lbl_courriel" runat="server" Text="Courriel : " CssClass="labels-Stagiaire"></asp:Label> <asp:Literal ID="litCourriel" runat="server"></asp:Literal>
        <br />
        <br />
    
    <h2>
        Stages :
    </h2>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="LinqDataSourceStages" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style2" Width="1025px">
        <Columns>
            <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" ReadOnly="True" />
            <asp:BoundField DataField="Début" HeaderText="Début" SortExpression="Début" ReadOnly="True" />
            <asp:BoundField DataField="Fin" HeaderText="Fin" SortExpression="Fin" ReadOnly="True" />
            <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" ReadOnly="True" />
        </Columns>
    </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSourceStages" runat="server" ContextTypeName="TP2.GestionStagesDataContext" EntityTypeName="" OrderBy="Titre" TableName="Stages" Select="new (Titre, Début, Fin, Commentaire, Superviseur)" Where="StagiaireId == @StagiaireId">
            <WhereParameters>
                <asp:SessionParameter Name="StagiaireId" SessionField="ID" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
    
    </form>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</body>
</html>
