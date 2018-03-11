<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="datesfirst.aspx.cs" Inherits="datesfirst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="container">
        <fieldset>
            <legend class="text-left">Dates<span class="req"></span></legend>
            <div class="form-group form-horizontal">

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lblfirstdate" runat="server" CssClass="col-md-2" Text="Firstdate" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtdate" CssClass="form-control" ClientIDMode="Static" runat="server" placeholder="YYYY-MM-DD" Font-Underline="False" TextMode="SingleLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFname" runat="server" ErrorMessage="Enter Full Name" ControlToValidate="txtdate" ForeColor="OrangeRed" Font-Bold="True" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group">
                        <asp:Label ID="lbllastdate" runat="server" CssClass="col-md-2" Text="lastdate" Font-Bold="True"></asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox ID="txtlastdate" CssClass="form-control " runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <asp:Label ID="lblerror" runat="server" Text=""></asp:Label>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-sm" Text="get next date" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary btn-sm" Text="Update date" OnClick="Button2_Click" />

            </div>


        </fieldset>
    </div>
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

</asp:Content>

