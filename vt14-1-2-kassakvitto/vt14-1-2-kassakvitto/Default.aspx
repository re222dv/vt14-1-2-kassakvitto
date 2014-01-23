<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="vt14_1_2_kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Kassakvitto</h1>
            Total köpesumma:<br />
            <%-- Total köpesumma --%>
            <asp:TextBox ID="EditTotal" runat="server" TextMode="Number" autofocus="autofocus" ></asp:TextBox>kr
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fyll i total köpesumma" Display="Dynamic" ControlToValidate="EditTotal" CssClass="error" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Total köpesumma måste vara ett tal över noll" Display="Dynamic" ControlToValidate="EditTotal" Operator="GreaterThan" Type="Double" CssClass="error" ValueToCompare="0" SetFocusOnError="True"></asp:CompareValidator><br />
            <asp:Button ID="Calc" runat="server" Text="Beräkna rabatt" CssClass="button" OnClick="Calc_Click" />
            
            <%-- Kvitto --%>
            <asp:Panel ID="ReceiptPanel" runat="server" CssClass="receipt" Visible="false">
                <h1>Kvitto</h1>
                <dl>
                    <dt>Totalt</dt>
                    <dd>
                        <asp:Label ID="SubTotal" runat="server" Text=""></asp:Label></dd>
                    <dt>Rabattsats</dt>
                    <dd>
                        <asp:Label ID="DiscountRate" runat="server" Text=""></asp:Label></dd>
                    <dt>Rabatt</dt>
                    <dd>
                        <asp:Label ID="Discount" runat="server" Text=""></asp:Label></dd>
                    <dt>Att betala</dt>
                    <dd>
                        <asp:Label ID="Total" runat="server" Text=""></asp:Label></dd>
                </dl>
            </asp:Panel>
        </div>
    </form>
</body>
</html>