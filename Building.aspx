<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Building.aspx.cs" Inherits="Building" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
   
    <style type="text/css">
        .auto-style1 {
            width: 441px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            Welcome to the Energy Audit and Building Systems Improvement initial survey</div>
        <asp:Panel ID="Panel1" runat="server" Height="251px" Width="440px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/culver4.png" Width="442px" Height="252px" />
        </asp:Panel>
        <p>
            Please select the type of Heating from list
        </p>
        <p>
            <asp:CheckBox ID="cbFurnace" runat="server" OnCheckedChanged="btnGetHeatSavings_Click" Text="Furnace" OnUnload="btnGetHeatSavings_Click" />
&nbsp;<asp:CheckBox ID="cbBoiler" runat="server" OnCheckedChanged="btnGetHeatSavings_Click" Text="Boiler" />
        </p>
        <p>
            Please select the type of Cooling from list</p>
        <p>
            <asp:CheckBox ID="cbForcedAir" runat="server" OnCheckedChanged="btnGetHeatSavings_Click" Text="Forced Air" />
            <asp:CheckBox ID="cbChiller" runat="server" OnCheckedChanged="btnGetHeatSavings_Click" Text="Chiller" />
        </p>
        <p>
            Please select the type of ventilating from the list</p>
        <p>
            <asp:CheckBox ID="cbStandard" runat="server" Text="Standard" OnCheckedChanged="btnGetHeatSavings_Click" />
            <asp:CheckBox ID="cbEnhanced" runat="server" OnCheckedChanged="btnGetHeatSavings_Click" Text="Enhanced" />
        </p>
        <p>
            <asp:TextBox ID="tbBUILDING" runat="server" Visible="False"></asp:TextBox>
        </p>
        <asp:Button ID="btnGetHeatSavings" runat="server" OnClick="btnGetHeatSavings_Click" Text="Get Heat Savings" />
        Must click to submit to Audit(Non-Registered users will see some benefits, not full Audit)<br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#339933"></asp:Label>
        <br />
        <asp:HyperLink ID="lbAudit" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Medium" NavigateUrl="~/Savings.aspx">Review Overall Audit</asp:HyperLink>
        <br />
        <p>
            <asp:Button ID="btnLogout" runat="server" Text="Log Out" PostBackUrl="~/Comm_Con.aspx" OnClick="btnLogout_Click" UseSubmitBehavior="False" ValidateRequestMode="Enabled" />
            Return to Login Page</p>
        <p>
            <asp:LinkButton ID="lbtnTransformer" runat="server" OnClick="lbtnTransformer_Click" PostBackUrl="~/Transformer.aspx">Check Building&#39;s Electrical Transformer for Savings to Audit</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="lbtnHotWater" runat="server" OnClick="lbtnHotWater_Click" PostBackUrl="~/HotWater.aspx">Add Savings for HotWater Heater to Audit</asp:LinkButton>
        </p>
        <p>
            <asp:LinkButton ID="lbCheckLightingControls" runat="server" OnClick="lbCheckLightingControls_Click">Add Savings for Lighting Controls to Audit</asp:LinkButton>
        </p>
    </form>
</body>
</html>
