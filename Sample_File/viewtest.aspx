<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewtest.aspx.cs" Inherits="viewtest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    
    <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #6600FF;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            color: #00CC00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

            <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

    <center>
    <div class="auto-style1" style="margin-left: 0px">
    
        <strong>&nbsp;Test Details<br />
        </strong>
    </div>
    <div>
    <div style="margin-left: 0px">
    
        <asp:Label ID="Label1" runat="server" Text="Label" style="font-size: large"></asp:Label>
    
        <br />
        <br />
        <span class="auto-style2"><strong><span class="auto-style3">Available Test</span><br />
        </strong></span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 0px" Width="194px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TEST_NAME" HeaderText="TEST_NAME" SortExpression="TEST_NAME" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;TEST_NAME&quot; FROM &quot;TP_QUESTIONS&quot;"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    
    </div>
    <div style="margin-left: 0px">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TEST_NAME,QUESTION_NO" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="420px" Height="161px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="TEST_NAME" HeaderText="TEST_NAME" ReadOnly="True" SortExpression="TEST_NAME" />
                <asp:BoundField DataField="QUESTION_NO" HeaderText="QUESTION_NO" ReadOnly="True" SortExpression="QUESTION_NO" />
                <asp:BoundField DataField="QUESTION" HeaderText="QUESTION" SortExpression="QUESTION" />
                <asp:BoundField DataField="CHOICE_1" HeaderText="CHOICE_1" SortExpression="CHOICE_1" />
                <asp:BoundField DataField="CHOICE_2" HeaderText="CHOICE_2" SortExpression="CHOICE_2" />
                <asp:BoundField DataField="CHOICE_3" HeaderText="CHOICE_3" SortExpression="CHOICE_3" />
                <asp:BoundField DataField="CHOICE_4" HeaderText="CHOICE_4" SortExpression="CHOICE_4" />
                <asp:BoundField DataField="ANSWER" HeaderText="ANSWER" SortExpression="ANSWER" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TP_QUESTIONS&quot; ORDER BY &quot;TEST_NAME&quot;, &quot;QUESTION_NO&quot;"></asp:SqlDataSource>
    
    </div>
        <br />
    <div>
        <asp:Button ID="Button1" runat="server" class="btn btn-danger" OnClick="Button1_Click" Text="<< Back" />
    </div>
    </center>
    </form>
</body>
</html>
