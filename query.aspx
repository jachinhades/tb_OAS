<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="query.aspx.cs" Inherits="tb_OAS.query" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- GridView for displaying the data -->
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          DataKeyNames="EmpId" DataSourceID="SqlDataSource1" Width="1185px">
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSex" HeaderText="EmpSex" SortExpression="EmpSex" />
                    <asp:BoundField DataField="EmpBirth" HeaderText="EmpBirth" SortExpression="EmpBirth" />
                    <asp:BoundField DataField="EmpDepart" HeaderText="EmpDepart" SortExpression="EmpDepart" />
                    <asp:BoundField DataField="EmpAddress" HeaderText="EmpAddress" SortExpression="EmpAddress" />
                    <asp:BoundField DataField="EmpTel" HeaderText="EmpTel" SortExpression="EmpTel" />
                    <asp:BoundField DataField="EmpEmail" HeaderText="EmpEmail" SortExpression="EmpEmail" />
                </Columns>
            </asp:GridView>

            <!-- DropDownList for selecting EmpId, with AutoPostBack enabled -->
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="下拉单选" 
                              DataTextField="EmpId" DataValueField="EmpId" 
                              OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" 
                              AutoPostBack="True">
            </asp:DropDownList>

            <!-- DataSource for DropDownList -->
            <asp:SqlDataSource ID="下拉单选" runat="server" 
                               ConnectionString="Data Source=DESKTOP-5EMUFJI;Initial Catalog=dB_OAS;Persist Security Info=True;User ID=sa;Password=password" 
                               ProviderName="System.Data.SqlClient" 
                               SelectCommand="SELECT [EmpId] FROM [tb_emp]">
            </asp:SqlDataSource>

            <!-- DataSource for GridView with parameter based on DropDownList selection -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                               ConnectionString="<%$ ConnectionStrings:dB_OASConnectionString2 %>" 
                               SelectCommand="SELECT * FROM [tb_emp] WHERE ([EmpId] LIKE '%' + @EmpId + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="EmpId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <br />
        </div>
    </form>
</body>
</html>
