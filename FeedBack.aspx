<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" 
MasterPageFile="~/Site.master" Inherits="InstituteSite.FeedBack" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder" runat="server">
    <fieldset>
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="تسجيل ملاحظات"></asp:Label>
        </legend>        
            <center>    
                <br />
                <asp:Label ID="Label1" runat="server" Text="يتشرف المعهد الثقافي بإبداء آرائكم وملاحظاتكم "></asp:Label>
                <br />
                 
                <table width="700" border="0" cellpadding="0" cellspacing="0"> 
                    <colgroup>
                        <col width="50%"/>
                        <col width="50%"/>       
                        
                    </colgroup>    
                    
                    <tr>
                        <td align="left">
                            الاسم :
                        </td>
                        <td align="right">
                        <br />
                            <telerik:RadTextBox ID="txtName" runat="server" Width="60%">
                            </telerik:RadTextBox>
                        </td>
                    </tr>                    
                    <tr>                  
                        <td align="left">
                            البريد لالكتروني:
                            <font color="red">*</font>
                        </td>
                        <td align="right">
                            <br />
                            <telerik:RadTextBox ID="txtEmail" runat="server" Width="60%">
                            </telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="reqtxtEmail"
                                runat="server" ForeColor="Red" ValidationGroup="register"  ErrorMessage=" البريد لالكتروني" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regtxtEmail" runat="server" 
                                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ControlToValidate="txtEmail" 
                                ForeColor="Red" ErrorMessage="خطأ في البريد الالكتروني" ValidationGroup="register">
                            </asp:RegularExpressionValidator>

                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            الجوال:
                        </td>
                        <td align="right">
                        <br />
                            <telerik:RadTextBox ID="txtMobile" runat="server" Width="60%">
                            </telerik:RadTextBox>
                            <asp:RegularExpressionValidator Display="Dynamic" id="regtxtMobile" runat="server"
                                 ErrorMessage="رقم الجوال لابد أن يبدأ بـ 05 ثم ثمانية أرقام" ControlToValidate="txtMobile" 
                                 ForeColor="Red" ValidationExpression="05\d\d\d\d\d\d\d\d" ValidationGroup="register" >
                            </asp:RegularExpressionValidator>  
                        </td>  
                    </tr>          
                   
                    <tr>
                        <td align="left">
                            ملاحظات:
                            <font color="red">*</font>
                            <br />
                        </td>
                        <td align="right">
                        <br />
                            <telerik:RadTextBox  ID="txtNotes" runat="server" TextMode="MultiLine" 
                                    MaxLength="400" Rows="7" Width="90%">
                            </telerik:RadTextBox>
                            <asp:RequiredFieldValidator ControlToValidate="txtNotes" ID="reqtxtNotes"
                                runat="server" ForeColor="Red" ValidationGroup="register" ErrorMessage="ملاحظات" Display="Dynamic">
                            </asp:RequiredFieldValidator>
                        </td>  
                    </tr>          
                    
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="lblRegister" runat="server" Width="100%" Text="" 
                            style="color: #FF0000; font-weight: bold; font-size: 12px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <br />      
                            <telerik:RadButton ID="btnRegisterNotes" runat="server" Text="ارسال ملاحظات" Width="80px" 
                            Font-Size="12pt" Font-Bold="True" 
                            ValidationGroup="register"  OnClick="btnRegisterNotes_Click"  >
                            </telerik:RadButton>
                        </td>
                    </tr>              
                </table>
            </center>
    </fieldset>
</asp:content>
