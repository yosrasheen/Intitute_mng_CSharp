<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="ContactUs.aspx.cs" Inherits="InstituteSite.ContactUs" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    </telerik:RadWindowManager>
    <fieldset>
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="للتواصل"></asp:Label>
        </legend>
        <div runat="server" id="divPatientData">
            <center>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col width="100%" />
                    </colgroup>
                    <tr>
                        <td colspan="1" style="font-family: tahoma; font-size: medium; background-color: #FF9933; color: #009900">
                            <br /> <b>
                            للتواصل مع جميع فروع المعهد الثقافي بالمملكة العربية السعودية : 
                            </b>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <colgroup>
                                <col width="20%" />
                                <col width="80%" />
                            </colgroup>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        الرياض    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        العليا
                                    </td>
                                    <td>
                                        01-4657575
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        السويدي
                                    </td>
                                    <td>
                                        01-2665010
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        النسيم
                                    </td>
                                    <td>
                                        01-4657575
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        الروضة
                                    </td>
                                    <td>
                                        01-4657575
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                    <br />
                                        أبها    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        أبها
                                    </td>
                                    <td>
                                        07-2287575
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        <br />خميس مشيط    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        خميس مشيط
                                    </td>
                                    <td>
                                        07-2503636
                                    </td>
                                </tr>
                                <tr >
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        <br />الدمام    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        الدمام
                                    </td>
                                    <td>
                                        03-8187575
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        <br />بريدة    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        بريدة
                                    </td>
                                    <td>
                                        06-3853461
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        <br />حائل    
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        حائل
                                    </td>
                                    <td>
                                        06-5657575
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-weight: bold; color: #006600;">
                                        <br />
                                        جدة 
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        جدة
                                    </td>
                                    <td>
                                        0508809020
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; color: #000080">
                                        جدة
                                    </td>
                                    <td>
                                        0508803090
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </fieldset>
</asp:Content>
