<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 544px;
            height: 370px;
        }
    </style>
</head>
<body style="height: 213px">
    <form id="form1" runat="server">
        <div>
            &nbsp;<img alt="" class="auto-style1" src="Images/sj.jpg" /><br />
            <br />
            <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
            Please Enter UserName<br />
            <asp:TextBox ID="tbPass" runat="server"></asp:TextBox>
            Please Enter Password<br />
            <asp:TextBox ID="tbFirst" runat="server"></asp:TextBox>
            Please Enter First Name<br />
            <asp:TextBox ID="tbLast" runat="server"></asp:TextBox>
            Please Enter Last Name<br />
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
            Please Enter Email<br />
            <asp:TextBox ID="tbBuilding" runat="server"></asp:TextBox>
            Please Enter Building Name<br />
            <asp:Button ID="btnRegister" runat="server" CausesValidation="False" OnClick="btnRegister_Click" OnDataBinding="btnRegister_Click" Text="Register" UseSubmitBehavior="False" />
            <br />
            <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
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
