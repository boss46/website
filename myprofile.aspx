<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myprofile.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #E5E5E5;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>

    <br />
    <div class="table-responsive">
        <table class="table table-hover">
            <tr>
                <td>Name</td>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:Label ID="lbladdress" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>state</td>
                <td>
                    <asp:Label ID="lblstate" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>city</td>
                <td>
                    <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>zipcode</td>
                <td>
                    <asp:Label ID="lblzipcode" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:Label ID="lblage" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Blood group</td>
                <td>
                    <asp:Label ID="lblbloodgroup" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>
                    <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>
                    <asp:Label ID="lblmobile" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>last donated date (dd-mm-yyyy)</td>
                <td>
                    <asp:Label ID="lblfirstdate" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Days from last donated</td>
                <td>
                    <asp:Label ID="lbldays" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                <td>Next donation date(mm-dd-yyyy)</td>
                <td>
                    <asp:Label ID="lbllastdate" runat="server" Text="Label"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>

