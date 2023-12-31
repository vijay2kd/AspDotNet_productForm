<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task4productstock_st.aspx.cs" Inherits="TASK4_ProductStock_.Task4productstock_st" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #5585b5;
            display:flex

        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 310px;
        }
        .auto-style4 {
            width: 310px;
        }
        form1{
            height:500px
        }
    </style>
<link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblproductid" runat="server" Text="Product Id :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtproductid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblproductname" runat="server" Text="Product Name :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtproductname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblDescription" runat="server" Text="Description :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblPrice" runat="server" Text="Price :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblQuantity" runat="server" Text="Quantity :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add Button" OnClick="btnadd_Click" />
                &nbsp;<asp:Button ID="btnview" runat="server" Text="View" OnClick="View" Width="111px" />
                </td>
            </tr>
        </table>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="1290px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
