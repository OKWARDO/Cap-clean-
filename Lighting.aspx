<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lighting.aspx.cs" Inherits="Lighting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">   
      window.history.forward();   
   </script>
    <style type="text/css">
        .auto-style1 {
            width: 1275px;
            height: 434px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" BackColor="#0000CC" BorderColor="Aqua" BorderStyle="Outset" Font-Bold="True" Font-Size="XX-Large" ForeColor="#66CCFF" Text="Welcome to the Lighting Compliance Audit" Width="1267px"></asp:Label>
        <img alt="Environmental Footprint and Monetary Savings are Towering!!" class="auto-style1" src="Images/office-space-the-nightmare-version.png" title="Please fill in the Check Boxes to Verify the Type of Lighting Controls Exist in your Building" /> Please check all the boxes with the type of Lighting Controls installed in your Building&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:CheckBox ID="cbZoneInt" runat="server" OnCheckedChanged="btnGetLightingSavings_Click" Text="Interior Zone Timers" />
        <asp:CheckBox ID="cbMotInt" runat="server" OnCheckedChanged="btnGetLightingSavings_Click" Text="Interior Motion Detectors" />
        <br />
        <asp:CheckBox ID="cbZoneExt" runat="server" OnCheckedChanged="btnGetLightingSavings_Click" Text="Exterior Zone Timers" />
        <asp:CheckBox ID="cbMotExt" runat="server" OnCheckedChanged="btnGetLightingSavings_Click" Text="Exterior Motion Detectors" />
        <br />
        <asp:TextBox ID="tbBuilding" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="btnGetLightingSavings" runat="server" OnClick="btnGetLightingSavings_Click" Text="Get Lighting Savings" CausesValidation="False" OnDataBinding="btnGetLightingSavings_Click" UseSubmitBehavior="False" />
        Must click to submit to Audit (Non-Registered users will see some benefits but not full Audit)<br />
        <asp:Button ID="btnLogOut" runat="server" OnClick="Page_PreRender" PostBackUrl="~/Comm_Con.aspx" Text="Log Out" />
        Return to Login Page<br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#339933"></asp:Label>
        <br />
        <asp:HyperLink ID="lbAudit" runat="server" NavigateUrl="~/Savings.aspx">Review Overall Audit</asp:HyperLink>
        <br />
        <asp:LinkButton ID="lbBuilding" runat="server" OnClick="lbBuilding_Click" PostBackUrl="~/Building.aspx">Add Heating and Ventilating Savings to Audit</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbtnHotWater" runat="server" OnClick="lbtnHotWater_Click" PostBackUrl="~/HotWater.aspx">Add Hot Water Savings to Audit</asp:LinkButton>
        <br />
        <asp:LinkButton ID="lbtnTransformer" runat="server" OnClick="lbtnTransformer_Click" PostBackUrl="~/Transformer.aspx">Add Transformer Savings to Audit</asp:LinkButton>
        <div>
        </div>
    </form>
</body>
</html>
