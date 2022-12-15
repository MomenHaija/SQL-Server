<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css%22%3E" />
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js%22%3E</script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js%22%3E</script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js%22%3E</script>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 290px;
        }
        .auto-style3 {
            width: 290px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 290px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 290px;
            height: 51px;
        }
        .auto-style8 {
            height: 51px;
        }
        .auto-style9 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style9">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style6">
            <asp:TextBox ID="tbname" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td class="auto-style4">
            <asp:TextBox ID="tbage" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone Number</td>
                    <td>
            <asp:TextBox ID="tblocation" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
            <asp:Label ID="Label2" runat="server" Text="City"></asp:Label>
                    </td>
                    <td class="auto-style8">
            <asp:DropDownList ID="dlcity" runat="server">
            </asp:DropDownList>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
            <asp:FileUpload ID="uploadimage" runat="server" />
                    </td>
                    <td class="auto-style8">
            <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="testlb" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
            <br />
            <br />
            <asp:Label ID="lbinfo" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblemployeeimage" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;
            &nbsp;<br />
            <br />
        </div>
    </form>
</body>
</html>
