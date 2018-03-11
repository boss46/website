<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="col-md-8">
        <fieldset>
            <legend class="text-left">Change Password <span class="req"></span></legend>
            <div class="form-group form-horizontal">
                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblpassword" runat="server" CssClass="col-md-3" Text="Current Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" placeholder="Enter current password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFusername" runat="server" ErrorMessage="Enter your user name" ControlToValidate="txtpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblnpassword" runat="server" CssClass="col-md-3" Text="New Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtnpassword" CssClass="form-control " runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFnpassword" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtnpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblcpassword" runat="server" CssClass="col-md-3" Text="Confirm New Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtcpassword" CssClass="form-control " runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFcpassword" runat="server" ErrorMessage="Enter confirm Password" ControlToValidate="txtcpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CVcpassword" runat="server" ErrorMessage="Password did not match" ControlToValidate="txtcpassword" ControlToCompare="txtnpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
                <asp:Label ID="lbl_msg" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-primary btn-sm" Text="Change Password" OnClick="btnsubmit_Click" />
            </div>
        </fieldset>
    </div>
</asp:Content>

