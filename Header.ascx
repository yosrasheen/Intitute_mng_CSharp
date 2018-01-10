<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs"
    Inherits="InstituteSite.UC.Header" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<fieldset >
<table dir="rtl" width="220" border="0" cellpadding="0" cellspacing="0">
    <colgroup>
        <col  width="100"/>
        <col  width="220"/>
    </colgroup>
    
    
    <tr align="center" valign="middle">
        <td colspan="2" align="center" valign="middle">
            <br />
            <telerik:RadMenu ID="webSiteMenu" Font-Size="Large" Font-Bold="true"
                runat="server"  Width="100%" Height="250"  Visible="true" CssClass="RadMenu">
            </telerik:RadMenu>
            <br />
            <br />
        </td>
    </tr>
</table>
</fieldset>