<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotWater.aspx.cs" Inherits="HotWater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">   
      window.history.forward();   
   </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hot Water Heater
            <br />
            Please indicate if Hot Water Heater is Gas or Electric<br />
            <asp:CheckBox ID="cbGas" runat="server" OnCheckedChanged="Page_Load" Text="Gas" />
            <asp:CheckBox ID="cbElectric" runat="server" OnCheckedChanged="Page_Load" Text="Electric" />
            <br />
            <asp:TextBox ID="tbBuilding" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Button ID="btnGetWaterSavings" runat="server" OnClick="btnGetWaterSavings_Click" Text="Get Water Savings" CausesValidation="False" OnDataBinding="btnGetWaterSavings_Click" UseSubmitBehavior="False" />
            Must click to submit to Audit (Non-Registered users
            <br />
            will get some benefits, not full Audit)<br />
            <asp:Button ID="btnLogOut" runat="server" PostBackUrl="~/Comm_Con.aspx" Text="Log Out" OnClick="Page_PreRender" OnCommand="Page_PreRender" />
            Return to Login Page<br />
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#339933"></asp:Label>
            <br />
            <asp:HyperLink ID="lbAudit" runat="server" NavigateUrl="~/Savings.aspx">Review Overall Audit</asp:HyperLink>
            <br />
            <asp:LinkButton ID="lbBuilding" runat="server" OnClick="lbBuilding_Click" PostBackUrl="~/Building.aspx">Add Heating and Ventilating Savings to Audit</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lbCheckLightingControls" runat="server" OnClick="lbCheckLightingControls_Click" PostBackUrl="~/Lighting.aspx">Add Savings Using Lighting Controls to Audit</asp:LinkButton>
            <br />
            <asp:LinkButton ID="lbtnTransformer" runat="server" OnClick="lbtnTransformer_Click" PostBackUrl="~/Transformer.aspx">Check Your Building&#39;s Transformer for Savings to Audit</asp:LinkButton>
        </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Screen Shot 2012-05-08 at 12.24.50 PM.png" OnLoad="Page_Load" Width="676px" />
    </form>
</body>
</html>
