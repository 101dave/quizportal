<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

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
            font-size: x-large;
            color: #3366FF;
        }
        .auto-style5 {
            font-size: xx-large;
            color: #FF3300;
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
        <p class="auto-style5" style="margin-left: 0px">
            <strong style="margin-left: 10px"> >> ADMIN PANEL << </strong></p>
        <p class="auto-style1" style="margin-left: 0px; font-weight: 700;">
            <asp:Label ID="Label1" runat="server" style="font-size: large; color: #009933" Text="Label"></asp:Label>
            &nbsp;</p>
        <p class="auto-style1" style="margin-left: 0px; font-weight: 700;">
            &nbsp;</p>
        <p class="auto-style1" style="margin-left: 0px; font-weight: 700;">
            <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Create Test" Width="300px" height="35px"  OnClick="Button2_Click" />
        </p>
        <p class="auto-style1" style="margin-left: 0px; font-weight: 700;">
            <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="View Test" Width="300px" OnClick="Button3_Click" Height="35px" />
        </p>
        <p class="auto-style1" style="margin-left: 0px; font-weight: 700;">
            <asp:Button ID="Button4" runat="server" class="btn btn-success" Text="Delete Test" Width="300px" OnClick="Button4_Click" Height="35px" />
        </p>
        <br />
        <div style="margin-left: 0px">
            <asp:Button ID="Button1" runat="server" class="btn btn-danger" OnClick="Button1_Click" Text="Logout" Font-Bold="True" Height="42px" Width="134px" />
        </div>
        </center>
    </form>

</body>
</html>
