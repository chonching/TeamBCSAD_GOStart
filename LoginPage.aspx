<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
              
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>       
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Submit" />
                </td>
            </tr>
        </table>

        <table>
              <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Name"></asp:Label></td>
                <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Address"></asp:Label></td>
                <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="txtEmailR" runat="server"></asp:TextBox></td>
            </tr>
            <%-- <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmailR" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmailR" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>--%>
            <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox ID="txtPasswordR" runat="server"></asp:TextBox></td>
                 <tr>
                <td><asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label></td>
                <td><asp:TextBox ID="txtConPasswordR" runat="server"></asp:TextBox></td>
            </tr>
               <%-- <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPasswordR"
                runat="server" />
                </td>
            </tr>
           
            <%-- <td>
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPasswordR"
                ControlToValidate="txtConPasswordR" runat="server" />
        </td>--%>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="register" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
