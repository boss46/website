<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchdonars.aspx.cs" Inherits="view_searchboxx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" onkeyup="Search_Gridview(this,'gvTest')"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <div class="table-responsive">
        <asp:GridView ID="gvTest" runat="server" Width="100%" ClientIDMode="Static" CssClass="table table-bordered table-hover " AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" >
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" SortExpression="zipcode" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="bloodg" HeaderText="bloodg" SortExpression="bloodg" />
                <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="firstdate" HeaderText="firstdate" SortExpression="firstdate"  />
                <asp:BoundField DataField="lastdate" HeaderText="lastdate" SortExpression="lastdate" />
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fname], [mname], [lname], [address], [state], [city], [zipcode], [age], [bloodg], [gender], [email], [mobile], [firstdate], [lastdate] FROM [donor_info]" OldValuesParameterFormatString="original_{0}">
    </asp:SqlDataSource>
    <script type="text/javascript">
    function Search_Gridview(strKey, strGV) {
        var strData = strKey.value.toLowerCase().split(" ");
        var tblData = document.getElementById(strGV);
        var rowData;
        for (var i = 1; i < tblData.rows.length; i++) {
            rowData = tblData.rows[i].innerHTML;
            var styleDisplay = 'none';
            for (var j = 0; j < strData.length; j++) {
                if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                    styleDisplay = '';
                else {
                    styleDisplay = 'none';
                    break;
                }
            }
            tblData.rows[i].style.display = styleDisplay;
        }
    }    
</script>
</asp:Content>

