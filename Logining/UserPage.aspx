<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Logining.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="display:flex; align-items:center; justify-content:center; width:100%; font-family: roboto,'Noto Sans Myanmar UI';">
    <form id="form1" runat="server">
        <div style="border-radius: 5px; border: solid gray 1px; width:700px">
            <asp:Table ID="Table1" runat="server" style="display:flex; align-items:center; justify-content:center; width:100%;">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:label ID="Label1" text="Label" runat="server" style="margin: 10px 0;"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:Image style="margin:50px 0; width: 550px" imageUrl="~/audi.png" alt="Audi" runat="server"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:button ID="Button1" text="Выход" runat="server" Onclick="Button1_Click" style="margin: 10px 0;"/>
                    </asp:TableCell></asp:TableRow></asp:Table></div></form></body></html>