<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    <div class="container">
        <fieldset>
            <legend class="text-left">CONTACT US FORM <span class="req"></span></legend>
            <div class="form-group form-horizontal">

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblusername" runat="server" CssClass="col-md-2" Text="Name" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtname" CssClass="form-control" runat="server" placeholder="Enter full name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFname" runat="server" ErrorMessage="Enter Full Name" ControlToValidate="txtname" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblemail" runat="server" CssClass="col-md-2" Text="E-Mail" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtemail" CssClass="form-control " runat="server" MaxLength="50" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFemail" runat="server" ErrorMessage="Enter valid email" ControlToValidate="txtemail" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblfeedback" runat="server" CssClass="col-md-2" Text="Message" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtfeedback" CssClass="form-control " runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFfeedback" runat="server" ErrorMessage="give you're feedback" ControlToValidate="txtfeedback" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
               <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-sm" Text="Send Feedback" OnClick="Button1_Click"/>
            </div>


        </fieldset>
</div>
</asp:Content>

