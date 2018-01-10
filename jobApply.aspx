<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="jobApply.aspx.cs" Inherits="InstituteSite.jobApply" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    </telerik:RadWindowManager>
    <fieldset >
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="التوظيف"></asp:Label>
        </legend>
        <div runat="server" id="divPatientData" >
            <center>
                <table width="700" border="0" cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col width="20%" />
                        <col width="10%"  />
                        <col width="70%"  />
                    </colgroup>
                    <tr>
                        <td align="left">
                            <asp:Label ID="lblJob" runat="server" Text="الوظيفة"></asp:Label>
                        </td>
                        <td></td>
                        <td align="right">
                            <telerik:RadComboBox ID="drpJobs" runat="server" DataTextField="Job_Name"
                                DataValueField="Job_ID" AutoPostBack="true">
                            </telerik:RadComboBox>
                            <br />
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="رقم الهوية"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtIdent" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtIdent" ID="reqtxtIdent"
                                    runat="server" ForeColor="Red" ValidationGroup="save" ErrorMessage="*" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" id="RegularExpressionValidator3" runat="server"
                                 ErrorMessage=" الهوية لابد أن يكون 10 أرقام" ControlToValidate="txtMobile" 
                                 ForeColor="Red" ValidationExpression="\d\d\d\d\d\d\d\d\d\d">
                            </asp:RegularExpressionValidator>  
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        <br />
                            <asp:Label ID="Label2" runat="server" Text="الاسم"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtName" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtName" ID="reqtxtName"
                                    runat="server" ForeColor="Red" ValidationGroup="save" ErrorMessage="*" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="الجوال"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtMobile" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtMobile" ID="reqtxtMobile"
                                    runat="server" ForeColor="Red" ValidationGroup="save" ErrorMessage="*" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Display="Dynamic" id="RegularExpressionValidator1" runat="server"
                                 ErrorMessage="رقم الجوال لابد أن يبدأ بـ 05 ثم ثمانية أرقام" ControlToValidate="txtMobile" 
                                 ForeColor="Red" ValidationExpression="05\d\d\d\d\d\d\d\d">
                            </asp:RegularExpressionValidator>  
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="البريد الالكتروني"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="Email" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Email" ID="reqEmail"
                                runat="server" ForeColor="Red" ValidationGroup="register"  ErrorMessage=" البريد لالكتروني" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ControlToValidate="Email" 
                                ForeColor="Red" ErrorMessage="خطأ في البريد الالكتروني">
                            </asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        <br />
                            <asp:Label ID="Label8" runat="server" Text="المدينة"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="City" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="City" ID="reqCity"
                                    runat="server" ForeColor="Red" ValidationGroup="save" ErrorMessage="*" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                        <br />
                            <asp:Label ID="Label4" runat="server" Text="العنوان"></asp:Label>
                            <font color="red">*</font>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtAddress" runat="server" Width="200"></telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="reqtxtAddress"
                                    runat="server" ForeColor="Red" ValidationGroup="save" ErrorMessage="*" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left">
                        <br />
                            <asp:Label ID="Label6" runat="server" Text="الهاتف"></asp:Label>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtPhone" runat="server" Width="200"></telerik:RadTextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left">
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="السيرة الذاتية"></asp:Label>
                        </td>
                        <td></td>
                        <td align="right">
                            <br />
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            يمكن أرفاق الملفات التالية doc , pdf
                        </td>
                    </tr>
                    <tr align="center">
                        <td colspan="3">
                            <br />
                            <telerik:RadButton runat="server" ID="btnSave" ValidationGroup="save" Text="حفظ طلب التوظيف" 
                                OnClick="btnSave_Click"></telerik:RadButton>
                            <asp:Label ID="lblHead" runat="server" Text=""></asp:Label>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </fieldset>
</asp:Content>

