<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Savings.aspx.cs" Inherits="Savings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script type="text/javascript">   
      window.history.forward();   
   </script>
    <style type="text/css">
        .auto-style1 {
            width: 1053px;
            height: 606px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            Building Name&nbsp;
            <asp:TextBox ID="tbclient" runat="server" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ControlToValidate="tbclient" ErrorMessage="Must enter Building Name">**Required Field**</asp:RequiredFieldValidator>
            <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" PostBackUrl="~/Comm_Con.aspx" Text="Logout" UseSubmitBehavior="False" />
            Return to Login Page<br />
            User Password&nbsp;
            <asp:TextBox ID="tbcliPass" runat="server" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="tbcliPass" ErrorMessage="You must enter Password" SetFocusOnError="True">**Required Field**</asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text=" Must Re-Enter Credentials and click here to obtain Confidential Results" Font-Bold="True" ForeColor="#339933" CausesValidation="False" OnDataBinding="btnLogin_Click" UseSubmitBehavior="False" />
            <asp:Label ID="lblmes" runat="server"></asp:Label>
            <br />
            Must click to Display Audit Results(Non-Registered users will only see some benefits, not full Audit)<br />
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="#339933"></asp:Label>
            <br />
            <asp:ValidationSummary ID="ValidationSummaryclient" runat="server" />
            <img alt="" class="auto-style1" src="Images/rent_office_space_hong_kong_chater_road_1_0.png" /><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
