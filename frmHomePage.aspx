<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmHomePage.aspx.cs" Inherits="CharacterBuilder5E.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        My Characters<br />
        <asp:GridView ID="grdCharacters" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="dbCharacters" ForeColor="Black" GridLines="Horizontal" Width="751px" OnSelectedIndexChanged="grdCharacters_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="CharacterName" HeaderText="CharacterName" SortExpression="CharacterName" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassSubclass" HeaderText="ClassSubclass" SortExpression="ClassSubclass" />
                <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="dbCharacters" runat="server" ConnectionString="<%$ ConnectionStrings:dbCharacterListConnectionString %>" ProviderName="<%$ ConnectionStrings:dbCharacterListConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [CharacterName], [ClassName], [ClassSubclass], [Level] FROM [tblCharacters]"></asp:SqlDataSource>
        <asp:Button ID="btnNew" runat="server" Text="Button" />
        <br />
    </form>
</body>
</html>
