<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container">
        <fieldset>
            <legend class="text-left">Login Details <span class="req"></span></legend>
            <div class="form-group form-horizontal">

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblusername" runat="server" CssClass="col-md-2" Text="User Name" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtusername" CssClass="form-control" runat="server" placeholder="this will be your user name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFusername" runat="server" ErrorMessage="Enter your user name" ControlToValidate="txtusername" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblpassword" runat="server" CssClass="col-md-2" Text="Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtpassword" CssClass="form-control " runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFpassword" runat="server" ErrorMessage="Enter Password" ControlToValidate="txtpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblcpassword" runat="server" CssClass="col-md-2" Text="Confirm Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtcpassword" CssClass="form-control " runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFcpassword" runat="server" ErrorMessage="Enter confirm Password" ControlToValidate="txtcpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CVcpassword" runat="server" ErrorMessage="Password did not match" ControlToValidate="txtpassword" ControlToCompare="txtcpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
            </div>


        </fieldset>

        <fieldset>
            <legend class="text-left">Personal details <span class="req"></span></legend>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <asp:Label ID="lblfname" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtfname" CssClass="form-control " runat="server" placeholder="Surname name" onkeyup="Validate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFfname" ControlToValidate="txtfname" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lblmname" runat="server" Text="Middle Name" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtmname" CssClass="form-control " runat="server" placeholder="Your's Name" onkeyup="Validate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFmname" ControlToValidate="txtmname" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lbllname" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtlname" CssClass="form-control " runat="server" placeholder="Father Name" onkeyup="Validate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFlname" ControlToValidate="txtlname" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-12">
                    <asp:Label ID="lbladdress" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtaddress" CssClass="form-control " runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFaddr" ControlToValidate="txtaddress" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <asp:Label ID="lblState" runat="server" Text="State" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtstate" CssClass="form-control " runat="server" onkeyup="Validate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFstate" ControlToValidate="txtstate" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lblcity" runat="server" Text="City" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtcity" CssClass="form-control " runat="server" onkeyup="Validate(this)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFcity" ControlToValidate="txtcity" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lblzipcode" runat="server" Text="Zip Code" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtzipcode" CssClass="form-control " runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFzip" ControlToValidate="txtzipcode" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group col-md-4">
                    <asp:Label ID="lblage" runat="server" Text="AGE" Font-Bold="True"></asp:Label>
                    <asp:TextBox ID="txtage" CssClass="form-control " runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should me between 18-45" MaximumValue="45" MinimumValue="18" ControlToValidate="txtage" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RFage" ControlToValidate="txtage" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lblbloodg" runat="server" Text="Blood Group" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="ddlbloodg" CssClass="form-control " runat="server">
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="form-group col-md-4">
                    <asp:Label ID="lblgender" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
                    <asp:DropDownList ID="ddlgender" CssClass="form-control " runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group form-horizontal col-md-12">

                <div class="row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblemail" runat="server" CssClass="col-md-2" Text="E-mail" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtemail" CssClass="form-control " runat="server" placeholder="e.g(niru@gmail.com)" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFemail" ControlToValidate="txtemail" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <asp:Label ID="lblphone" runat="server" CssClass="col-md-2" Text="Mobile" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtphone" CssClass="form-control " runat="server" placeholder="valid phone no." TextMode="Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFphone" ControlToValidate="txtphone" runat="server" ErrorMessage="cannot be empty!" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblfirstdate" runat="server" CssClass="col-md-2" Text="Firstdate" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtdate" CssClass="form-control" ClientIDMode="Static" runat="server" placeholder="YYYY-MM-DD" Font-Underline="False" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-sm" Text="get next donation date" OnClick="getdate" />
                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lbllastdate" runat="server" CssClass="col-md-2" Text="lastdate" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtlastdate" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>



                <%--                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="col-md-2" Text="Confirm Password" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="TextBox3" CssClass="form-control " runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter confirm Password" ControlToValidate="txtcpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password did not match" ControlToValidate="txtpassword" ControlToCompare="txtcpassword" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                    </div>
                </div>--%>
            </div>

            <div class="form-group">
                <div class="col-md-offset-0 col-md-10">
                    <div>
<%--                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Required" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator><br />
                 /       <asp:CheckBox ID="chkrules" runat="server" />--%>
                        <span>"by clicking on submit button you willS agree with the <a href="termsCondition.aspx">terms and conditions</a> for Registration.*</span>
                    </div>
                    <asp:Button ID="btnsubmit" runat="server" href="home.aspx" CssClass="btn btn-primary btn-sm" Text="Submit" OnClick="btnlink_Click" />

                    <h3>Thank you:)</h3>
                    <h5>You will receive an email for successfully filling form  </h5>
                </div>
            </div>

            <%--            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>--%>

            <script type="text/javascript">
                var picker = new Pikaday(
                {
                    field: document.getElementById('txtdate'),
                    firstDay: 1,
                    minDate: new Date('2000-01-01'),
                    maxDate: new Date('2020-12-31'),
                    yearRange: [2000, 2020],
                    numberOfMonths: 1,
                    theme: 'dark-theme',

                    format: 'YYYY/M/D',
                    toString(date, format) {
                        // you should do formatting based on the passed format,
                        // but we will just return 'D/M/YYYY' for simplicity
                        const day = date.getDate();
                        const month = date.getMonth() + 1;
                        const year = date.getFullYear();
                        return `${year}/${month}/${day}`;
                    },
                    parse(dateString, format) {
                        // dateString is the result of `toString` method
                        const parts = dateString.split('/');
                        const day = parseInt(parts[0], 10);
                        const month = parseInt(parts[1] - 1, 10);
                        const year = parseInt(parts[1], 10);
                        return new Date(year, month, day);
                    }

                });
            </script>

        </fieldset>

    </div>
    <!-- ends col-6 -->


</asp:Content>

