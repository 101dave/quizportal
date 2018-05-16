<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

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
        }
        .auto-style2 {
            font-size: xx-large;
        }
         .auto-style3 {
            font-size: xx-large;
            color: #FF0000;
        }
       .auto-style4 {
            font-size: large;
                    color: #00cc00;
        }
       .auto-style5 {
            font-size: large;
                    color:#993333;
        }
       .auto-style6 {
            font-size: x-large;
                    color:#ffffff;
        }
       .auto-style7 {
            font-size: x-large;
                    color:#000000;
        }
    </style>
              
</head>
<body >
          
    <script type="text/javascript">
        function goBack() {
            window.history.back();
        }
        function goFor() {
           window.history.forward();
        }
    </script>

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

                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                 <div class="navbar navbar-inverse navbar-fixed-top">
                                       <div class="auto-style6">   
                                           <center>
                                                <strong><span class="auto-style2">
                                                <asp:Label ID="Label1" runat="server" class="auto-style3"></asp:Label>
                                                <br />
                                                </span></strong>
                                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                           </center>
                                       </div>
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1"  />
                            </Triggers>
                  </asp:UpdatePanel>
      
          <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

    <center>
    <div>

    </div>

    <div>
        <asp:Label ID="Testnamelabel" runat="server" Text=""></asp:Label>
    <span class="auto-style4"> <asp:Label ID="Label2"  runat="server"></asp:Label>   </span>
    </div>
        <br />
        <br />
        <p class="auto-style5"> Question Number </p>
        <div  class="auto-style5" >
            <asp:Label ID="QuestionNumberLabel" runat="server" Text="Question No:"></asp:Label>
        </div>
        <div>
        <asp:Label ID="Label5" runat="server" class="auto-style7"></asp:Label>

             <%-- <asp:TextBox ID="Question" runat="server" class="form-control" Height="50px" Width="1000px"></asp:TextBox> --%>
        </div>
        <br />
        <div>
            <asp:RadioButtonList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem Value="4" Selected="True" ></asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <asp:Button ID="saveNextButton" runat="server" Text="Save And Next >>" class="btn btn-primary" OnClick="saveNextButton_Click" />
        </div>
        <br />
        <br />
        <input type="button" value="<<     Back" class="btn btn-success"   onclick="goBack()" />   
        <input type="button" value="Forward >>" class="btn btn-success" onclick="goFor()" />
    <div>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" class="btn btn-danger" Height="41px" OnClick="Button1_Click" Text="Quit Quiz" Width="102px" />    
    </div>

    </center>
    </form>
</body>
</html>
c