<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvalidLogin.aspx.cs" Inherits="Logining.InvalidLogin" %>

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
                        <asp:label ID="Label1" class="lbl" Text="Неверные данные" runat="server" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:label ID="Label2" class="lbl" Text="Login" runat="server" />
                    </asp:TableCell><asp:TableCell>
                        <asp:textbox ID="Textbox1" class="text" runat="server" TextMode="Email"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:label ID="Label3" class="lbl" Text="Password" runat="server" />
                    </asp:TableCell><asp:TableCell>
                        <asp:textbox ID="Textbox2" class="text" runat="server" TextMode="Password"/>
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                        <asp:Label runat="server" ID="lbl"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                        <asp:Button ID="Button1" class="btn" Text="Вход" runat="server" OnClick="Button1_Click"/>
                        <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                            <asp:Button ID="Button2" class="btn" Text="Регистрация" runat="server" OnClick="Button2_Click"/>
                        </asp:TableCell>
                            </asp:TableRow>
                    </asp:TableCell></asp:TableRow></asp:Table></div></form></body></html>
