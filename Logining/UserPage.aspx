<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Logining.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<link rel="stylesheet" href="CSS/Style.css">
<body class="body">
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:label ID="Label1" class="lbl" text="Label" runat="server" style="margin: 10px 0;"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:Image id="img" alt="Audi" runat="server"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:button ID="Button1" class="btn" text="Выход" runat="server" Onclick="Button1_Click"/>
                    </asp:TableCell></asp:TableRow></asp:Table></div></form></body></html>