<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvalidLogin.aspx.cs" Inherits="Logining.InvalidLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="display:flex; align-items:center; justify-content:center; width:100%; font-family: roboto,'Noto Sans Myanmar UI';">
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" style="height: 300px; min-width: 250px; border-radius: 5px; border: solid gray 1px;">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:label ID="Label1" Text="Неверные данные" runat="server" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:label ID="Label2" Text="Login" runat="server" />
                    </asp:TableCell><asp:TableCell>
                        <asp:textbox ID="Textbox1" AutoPostBack="true" runat="server" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell>
                        <asp:label ID="Label3" Text="Password" runat="server" />
                    </asp:TableCell><asp:TableCell>
                        <asp:textbox ID="Textbox2" AutoPostBack="true" runat="server" />
                    </asp:TableCell></asp:TableRow><asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                        <asp:Button ID="Button1" Text="Повторить вход" runat="server" Width="150" OnClick="Button1_Click" style="margin: 10px 5px"/>
                        <asp:TableRow runat="server">
                        <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                            <asp:Button ID="Button2" Text="Регистрация" runat="server" Width="150" OnClick="Button2_Click" style="margin: 10px 5px"/>
                        </asp:TableCell>
                            </asp:TableRow>
                    </asp:TableCell></asp:TableRow></asp:Table></div>
    </form>
</body>
</html>
