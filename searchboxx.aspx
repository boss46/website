<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchboxx.aspx.cs" Inherits="view_searchboxx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" onkeyup="Search_Gridview(this,'gvTest')"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <div class="table-responsive">
        <asp:GridView ID="gvTest" runat="server" Width="100%" ClientIDMode="Static" CssClass="table table-bordered table-hover " AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" ReadOnly="True" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
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
                <asp:BoundField DataField="firstdate" HeaderText="firstdate" SortExpression="firstdate" />
                <asp:BoundField DataField="lastdate" HeaderText="lastdate" SortExpression="lastdate" />
            </Columns>
        </asp:GridView>
    </div>
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [donor_info]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [donor_info] WHERE [Id] = @original_Id AND [username] = @original_username AND [password] = @original_password AND [fname] = @original_fname AND [mname] = @original_mname AND [lname] = @original_lname AND [address] = @original_address AND [state] = @original_state AND [city] = @original_city AND [zipcode] = @original_zipcode AND [age] = @original_age AND [bloodg] = @original_bloodg AND [gender] = @original_gender AND [email] = @original_email AND [mobile] = @original_mobile AND (([ldate] = @original_ldate) OR ([ldate] IS NULL AND @original_ldate IS NULL))" InsertCommand="INSERT INTO [donor_info] ([username], [password], [fname], [mname], [lname], [address], [state], [city], [zipcode], [age], [bloodg], [gender], [email], [mobile], [ldate]) VALUES (@username, @password, @fname, @mname, @lname, @address, @state, @city, @zipcode, @age, @bloodg, @gender, @email, @mobile, @ldate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [donor_info] SET [username] = @username, [password] = @password, [fname] = @fname, [mname] = @mname, [lname] = @lname, [address] = @address, [state] = @state, [city] = @city, [zipcode] = @zipcode, [age] = @age, [bloodg] = @bloodg, [gender] = @gender, [email] = @email, [mobile] = @mobile, [ldate] = @ldate WHERE [Id] = @original_Id AND [username] = @original_username AND [password] = @original_password AND [fname] = @original_fname AND [mname] = @original_mname AND [lname] = @original_lname AND [address] = @original_address AND [state] = @original_state AND [city] = @original_city AND [zipcode] = @original_zipcode AND [age] = @original_age AND [bloodg] = @original_bloodg AND [gender] = @original_gender AND [email] = @original_email AND [mobile] = @original_mobile AND (([ldate] = @original_ldate) OR ([ldate] IS NULL AND @original_ldate IS NULL))">--%>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [donor_info]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [donor_info] WHERE [username] = @original_username AND [Id] = @original_Id AND [password] = @original_password AND [fname] = @original_fname AND [mname] = @original_mname AND [lname] = @original_lname AND [address] = @original_address AND [state] = @original_state AND [city] = @original_city AND [zipcode] = @original_zipcode AND [age] = @original_age AND [bloodg] = @original_bloodg AND [gender] = @original_gender AND [email] = @original_email AND [mobile] = @original_mobile AND (([firstdate] = @original_firstdate) OR ([firstdate] IS NULL AND @original_firstdate IS NULL)) AND (([lastdate] = @original_lastdate) OR ([lastdate] IS NULL AND @original_lastdate IS NULL))" InsertCommand="INSERT INTO [donor_info] ([username], [password], [fname], [mname], [lname], [address], [state], [city], [zipcode], [age], [bloodg], [gender], [email], [mobile], [firstdate], [lastdate]) VALUES (@username, @password, @fname, @mname, @lname, @address, @state, @city, @zipcode, @age, @bloodg, @gender, @email, @mobile, @firstdate, @lastdate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [donor_info] SET [Id] = @Id, [password] = @password, [fname] = @fname, [mname] = @mname, [lname] = @lname, [address] = @address, [state] = @state, [city] = @city, [zipcode] = @zipcode, [age] = @age, [bloodg] = @bloodg, [gender] = @gender, [email] = @email, [mobile] = @mobile, [firstdate] = @firstdate, [lastdate] = @lastdate WHERE [username] = @original_username AND [Id] = @original_Id AND [password] = @original_password AND [fname] = @original_fname AND [mname] = @original_mname AND [lname] = @original_lname AND [address] = @original_address AND [state] = @original_state AND [city] = @original_city AND [zipcode] = @original_zipcode AND [age] = @original_age AND [bloodg] = @original_bloodg AND [gender] = @original_gender AND [email] = @original_email AND [mobile] = @original_mobile AND (([firstdate] = @original_firstdate) OR ([firstdate] IS NULL AND @original_firstdate IS NULL)) AND (([lastdate] = @original_lastdate) OR ([lastdate] IS NULL AND @original_lastdate IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_fname" Type="String" />
            <asp:Parameter Name="original_mname" Type="String" />
            <asp:Parameter Name="original_lname" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_zipcode" Type="String" />
            <asp:Parameter Name="original_age" Type="String" />
            <asp:Parameter Name="original_bloodg" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter DbType="Date" Name="original_firstdate" />
            <asp:Parameter DbType="Date" Name="original_lastdate" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="mname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="zipcode" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="bloodg" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter DbType="Date" Name="firstdate" />
            <asp:Parameter DbType="Date" Name="lastdate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="mname" Type="String" />
            <asp:Parameter Name="lname" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="zipcode" Type="String" />
            <asp:Parameter Name="age" Type="String" />
            <asp:Parameter Name="bloodg" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter DbType="Date" Name="firstdate" />
            <asp:Parameter Name="lastdate" DbType="Date" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_fname" Type="String" />
            <asp:Parameter Name="original_mname" Type="String" />
            <asp:Parameter Name="original_lname" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_zipcode" Type="String" />
            <asp:Parameter Name="original_age" Type="String" />
            <asp:Parameter Name="original_bloodg" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
            <asp:Parameter DbType="Date" Name="original_firstdate" />
            <asp:Parameter DbType="Date" Name="original_lastdate" />
        </UpdateParameters>
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

