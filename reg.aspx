<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="tb_OAS.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
            width: 840px;
        }
        .auto-style2 {
            height: 24px;
            width: 115px;
        }
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            height: 24px;
            width: 190px;
        }
        .auto-style5 {
            width: 190px;
        }
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            height: 26px;
            width: 115px;
        }
        .auto-style8 {
            height: 26px;
            width: 190px;
        }
        .auto-style9 {
            height: 26px;
            width: 840px;
        }
        .auto-style10 {
            width: 115px;
            height: 27px;
        }
        .auto-style11 {
            width: 190px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
            width: 840px;
        }
        .auto-style13 {
            width: 840px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style7" style="text-align: right">姓名：</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="empName" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rfvEmpName" runat="server" ControlToValidate="empName" Display="Dynamic" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="text-align: right">用户名：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="empId" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="rfvEmpId" runat="server" ControlToValidate="empId" Display="Dynamic" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">密码：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="pwd" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="pwd" Display="Dynamic" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">确认密码：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="pwd_con" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="rfvPwd_con" runat="server" ControlToValidate="pwd_con" Display="Dynamic" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPwd_con" runat="server" ControlToCompare="pwd" ControlToValidate="pwd_con" Display="Dynamic" ErrorMessage="与密码不一致！"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">性别：</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="empSex" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="rfvEmpSex" runat="server" ControlToValidate="empSex" Display="Dynamic" EnableTheming="False" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">生日：</td>
                    <td class="auto-style5">
                        <asp:Calendar ID="empBirth" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                            <TodayDayStyle BackColor="#CCCCCC" />
                        </asp:Calendar>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">部门：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="empDepart" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="rfvDepartment" runat="server" ControlToValidate="empDepart" ErrorMessage="此项必填！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="text-align: right">地址：</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">电话：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">邮件：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:Button ID="Submit" runat="server" OnClick="Onclick" Text="提交" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <asp:ValidationSummary ID="vsSubmit" runat="server" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
