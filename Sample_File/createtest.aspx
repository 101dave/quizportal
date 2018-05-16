<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createtest.aspx.cs" Inherits="createtest" %>

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
            font-size: large;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #6600FF;
        }
        .auto-style3 {
            font-size: large;
           color:  #6600cc;
        }
        .auto-style4 {
            font-size: large;
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
        <p class="auto-style2" style="margin-left: 0px">
            <strong>Create Test</strong></p>
        <p class="auto-style4" style="margin-left: 0px">
            <asp:Label ID="Label1" runat="server" style="font-size: large"></asp:Label>
        </p>
        <p class="auto-style1" style="margin-left: 0px"> &nbsp;
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Test Name  </span><br />
            <asp:TextBox ID="TextBox1" runat="server"  class="form-control"  OnTextChanged="TextBox1_TextChanged" Width="300px"></asp:TextBox>
        </p> 
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Question No </span><br />
            <asp:TextBox ID="TextBox2" class="form-control"  runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Question </span><br />
            <asp:TextBox ID="TextBox3"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Option 1 </span><br />
            <asp:TextBox ID="TextBox4"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Option 2 </span><br />
            <asp:TextBox ID="TextBox5"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Option 3</span><br />
            <asp:TextBox ID="TextBox6"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <span class="auto-style3">Option 4</span><br />
            <asp:TextBox ID="TextBox7"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
        <p class="auto-style3" style="margin-left: 0px">
            Answer Option<br />
            <asp:TextBox ID="TextBox8"  class="form-control" runat="server" Width="300px"></asp:TextBox>
        </p>
       <br>
        <p class="auto-style3" style="margin-left: 0px">
            <asp:Button ID="Button2" class="btn btn-success" runat="server" Height="37px" OnClick="Button2_Click" Text="Insert" Width="150px" />
        </p>
        <p class="auto-style3" style="margin-left: 0px">
            &nbsp;
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <div style="margin-left:0px">
            <asp:Button ID="Button1" class="btn btn-danger" runat="server" OnClick="Button1_Click" Text="<< Back" Height="40px" Width="80px" />
        </div>
        </center>
    </form>
    <br />
    <br />
</body>
</html>
