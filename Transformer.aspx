<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transformer.aspx.cs" Inherits="Transformer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">   
      window.history.forward(1);   
   </script>
    <style type="text/css">
        .auto-style1 {
            width: 371px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <img class="auto-style1" src="Images/220px-CERN_Computer_Centre_for_LHC_-_Transformers.jpg" /><br />
        Please use the check boxes to indicate the type of Transformer your building has<div>
        </div>
        <asp:CheckBox ID="cbLiq" runat="server" OnCheckedChanged="btnGetTransformerSavings_Click" Text="Liquid" />
        <asp:CheckBox ID="cbDry" runat="server" OnCheckedChanged="btnGetTransformerSavings_Click" Text="Dry" />
        <br />
        <asp:TextBox ID="tbAge" runat="server" OnTextChanged="btnGetTransformerSavings_Click"></asp:TextBox>
        Number of Years old the Transformer is today<br />
        <asp:TextBox ID="tbBuilding" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Button ID="btnGetTransformerSavings" runat="server" OnClick="btnGetTransformerSavings_Click" Text="Get Transformer Savings" CausesValidation="False" OnDataBinding="btnGetTransformerSavings_Click" UseSubmitBehavior="False" />
        Must click to submit to Audit
        (Non-Registered users will only get
        <br />
        some benefits, not full Audit)<br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#339933"></asp:Label>
        <br />
        <asp:LinkButton ID="lbAudit" runat="server" OnClick="lbAudit_Click" PostBackUrl="~/Savings.aspx">Review Overall Audit</asp:LinkButton>
        <br />
        <asp:HyperLink ID="lbBuilding" runat="server" NavigateUrl="~/Building.aspx" OnDataBinding="lbBuilding_Click">Add Heating and Ventilating Savings to Audit</asp:HyperLink>
        <br />
        <asp:HyperLink ID="lbtnHotWater" runat="server" NavigateUrl="~/HotWater.aspx" OnDataBinding="lbtnHotWater_Click">Add Hot Water Savings to Audit</asp:HyperLink>
        <br />
        <asp:HyperLink ID="lbCheckLightingControls" runat="server" NavigateUrl="~/Lighting.aspx" OnDataBinding="lbCheckLightingControls_Click">Add Savings Using Lighting Controls to Audit</asp:HyperLink>
        <br />
        <asp:Button ID="btnLogOut" runat="server" PostBackUrl="~/Comm_Con.aspx" Text="Log Out" />
        Return to Login Page<br />
        <br />
    </form>
</body>
</html>
