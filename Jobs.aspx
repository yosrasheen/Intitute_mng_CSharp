<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Jobs.aspx.cs" Inherits="InstituteSite.Jobs" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    </telerik:RadWindowManager>
     <center>
        <fieldset>
            <legend>
                <asp:Label ID="Label1" runat="server" Text="الوظائف"></asp:Label>
            </legend>
            <center>
                <table width="700" border="0" cellpadding="2" cellspacing="0">
                    <tr align="center">
                        <td>
                            <div runat="server" id="divPage">
                                <asp:LinkButton ID="btnAddNew" runat="server" OnClick="btnAddNew_Click">
                                    <img src="pics/add.png" width="16" />
                                    <asp:Label ID="lblAddNew" runat="server" Text="أضافة"></asp:Label>
                                </asp:LinkButton>
                                <telerik:RadGrid ID="grdJobs" runat="server" AutoGenerateColumns="False" 
                                    OnNeedDataSource="grdJobs_NeedDataSource"
                                    OnItemCommand="grdJobs_ItemCommand"  AllowPaging="True"  PageSize="10">
                                    <MasterTableView>
                                        <HeaderStyle Font-Size="10pt" Font-Bold="true" />
                                        <ItemStyle Font-Size="10pt" Font-Bold="true" />
                                        <AlternatingItemStyle Font-Size="10pt" Font-Bold="true" />
                                        <NoRecordsTemplate>
                                            <asp:Label ID="lblNoData" runat="server" Text="لا توجد بيانات"></asp:Label>
                                        </NoRecordsTemplate>
                                        <Columns>
                                            <telerik:GridBoundColumn HeaderText="id" Visible="false" DataField="Job_ID">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="الوظيفة" DataField="Job_Name">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="الراتب" DataField="Job_Salary">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="المؤهل" DataField="Job_Qualification">
                                            </telerik:GridBoundColumn>
                                            <telerik:GridTemplateColumn>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="btnEdit" CommandName="EditData" runat="server" Text="تعديل">
                                                        <img src="pics/Edit.png" width="16" />
                                                        <asp:Label ID="lblEdit" runat="server" Text="تعديل"></asp:Label>
                                                    </asp:LinkButton>
                                                    <asp:HiddenField ID="hdnID" runat="server" Value='<%# Eval("Job_ID") %>' />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </div>
                        </td>
                    </tr>
                </table>
            </center>
            <br />
            <div runat="server" id="div1" visible="false">
                <fieldset>
                    <legend>
                        <asp:Label ID="lblData" runat="server" Text="بيانات الوظيفة"></asp:Label>
                    </legend>
                    <center>
                        <table width="80%" border="0" cellpadding="2" cellspacing="0">
                            <colgroup>
                                <col width="30%" />
                                <col width="70%" />
                            </colgroup>
                            <tr>
                                <td align="left">
                                    اسم الوظيفة : <font color="red">*</font>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtJobName" runat="server" Width="180">
                                    </telerik:RadTextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtJobName" ID="reqtxtJobName"
                                        runat="server" ForeColor="Red" ValidationGroup="register" ErrorMessage="اسم الوظيفة "
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            
                            <tr>
                                <td align="left">
                                    الراتب : <font color="red">*</font>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtJobSalary" runat="server" Width="180">
                                    </telerik:RadTextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtJobSalary" ID="reqtxtJobSalary" runat="server"
                                        ForeColor="Red" ValidationGroup="register" ErrorMessage="الراتب" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    المؤهل: <font color="red">*</font>
                                </td>
                                <td>
                                    <telerik:RadTextBox ID="txtQualf" runat="server" Width="180">
                                    </telerik:RadTextBox>
                                    <asp:RequiredFieldValidator ControlToValidate="txtQualf" ID="reqtxtQualf" runat="server"
                                        ForeColor="Red" ValidationGroup="register" ErrorMessage=" المؤهل" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <telerik:RadButton runat="server" ID="btnSave" ValidationGroup="New" Text="حفظ" OnClick="btnSave_Click">
                                    </telerik:RadButton>
                                    <telerik:RadButton runat="server" ID="btnDelete" Text="حذف" OnClick="btnDelete_Click">
                                    </telerik:RadButton>
                                    <telerik:RadButton runat="server" ID="btnCancel" Text="الغاء الامر" OnClick="btnCancel_Click">
                                    </telerik:RadButton>
                                </td>
                            </tr>
                        </table>
                    </center>
                </fieldset>
            </div>
        </fieldset>
    </center>
    <asp:HiddenField ID="hdnID2" runat="server" />
</asp:Content>

