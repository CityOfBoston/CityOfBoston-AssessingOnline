<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="payment_history_import._Default" Trace="false" ViewStateMode="Disabled" EnableEventValidation="false" EnableViewStateMac="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>File Upload</title>
</head>
<body>
 <form runat="server">
  <asp:DropDownList ID="DropDownList1" runat="server">
    <asp:ListItem Value="real-paymentshistory" Text="Real Estate Payment History - Current Year" Selected="True" />
    <asp:ListItem Value="real-paymentshistory" Text="Real Estate Payment History - Last Year" />
    <asp:ListItem Value="real-transactionhistory" Text="Real Estate Transactions - Current Year" />
    <asp:ListItem Value="real-transactionhistory-lastyear" Text="Real Estate Transactions - Last Year" />
    <asp:ListItem Value="motor-taxdue" Text="Motor Excise Taxes Due" />
    <asp:ListItem Value="personal-taxdue" Text="Personal Property Taxes Due" />
  </asp:DropDownList>
  <br />
  <asp:FileUpload ID="FileUpload1" runat="server" />
  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
  <br />
  <asp:Label ID="Label1" runat="server" />
 </form>
</body>
</html>