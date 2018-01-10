<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Map.aspx.cs" Inherits="InstituteSite.Map" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <fieldset>
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="الموقع"></asp:Label>
        </legend>
        <div runat="server" id="divPatientData">
            <center>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col width="700" />
                    </colgroup>
                    <tr>
                        <td colspan="1">
                            <img src="pics/map.png" height="400" width="100%"/>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </fieldset>
</asp:Content>
