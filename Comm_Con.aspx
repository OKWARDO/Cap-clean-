<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Comm_Con.aspx.cs" Inherits="Comm_Con" %>

<!DOCTYPE html>
<script runat="server">

   
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Commercial Consulting Energy Audit</title>
    <script type="text/javascript">   
      window.history.forward();   
   </script>
    <style type="text/css">
        .auto-style1 {
            width: 1287px;
            height: 759px;
            margin-left: 0px;
            margin-top: 28px;
        }
        .auto-style6 {
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" Height="184px">
            <p class="auto-style6" style="font-family: 'Poor Richard'; font-size: x-large; font-weight: bolder; font-variant: normal; font-style: normal; color: #00FF00; background-color: #000000; border-style: groove; padding: inherit">
                Commercial Consulting&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; please sign in for &quot;the best energy audit in global real estate&quot;take our free survey with no obligation!<img id="img1" runat="server" class="auto-style1"  src="~/Images/intla.png" /></p>
            <p>
                &nbsp;</p>
            &nbsp;</asp:Panel>
        <br />
        &nbsp;<asp:HyperLink ID="lbGoRegister" runat="server" BackColor="Black" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF0066" NavigateUrl="~/Register.aspx">Please click here to REGISTER for more Savings on your Energy Audit</asp:HyperLink>
        &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="lbProceed" runat="server" Font-Bold="True" ForeColor="#FF9900" NavigateUrl="~/Building.aspx" OnDataBinding="lbProceed_Click" Font-Size="Large">Proceed without Registering or Login</asp:HyperLink>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name
        <asp:TextBox ID="tbclient" runat="server" AutoPostBack="True" CausesValidation="True" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="tbclient" ErrorMessage="You must enter a User Name" ForeColor="#990000">**Required Field**</asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;
        <asp:TextBox ID="tbcliPass" runat="server" AutoPostBack="True" CausesValidation="True" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="PasswordValidate" runat="server" ControlToValidate="tbcliPass" ErrorMessage="You must enter a Password"  ForeColor="#990000" SetFocusOnError="True">**Required Field**</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:Label ID="lblmes" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnLogin" runat="server"  Text="Login" CausesValidation= "True" UseSubmitBehavior="True" OnClick="btnLogin_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMsg" runat="server" BackColor="Black" Font-Bold="True" Font-Italic="False" ForeColor="#66FF33">Already Registered? Just Login Here!!</asp:Label>
        <br />
        <p>
            </p>
        <asp:ValidationSummary ID="ValidationSummmaryclient" runat="server" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
    </form>
</body>
</html>
