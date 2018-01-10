<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="InstituteSite._Default" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    </telerik:RadWindowManager>
    <fieldset style="border: thin outset #009900">
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="الصفحة الرئيسة"></asp:Label>
        </legend>
        <div runat="server" id="divPatientData">
            <center>
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col width="70%" />
                        <col width="30%" />
                    </colgroup>
                    <tr>
                        <td colspan="1">
                            <table width="100%" border="0" cellpadding="2" cellspacing="2" 
                                style=" font-size:medium; vertical-align: middle; text-align:right;">
                                <colgroup>
                                    <col width="100%" />
                                </colgroup>
                                <tr>
                                    <td style="font-family: tahoma; font-size: medium; background-color: #FF9933; color: #009900; font-weight: bold;">
                                        الرؤية 
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        1-	التوسع في استخدام التكنولوجيا الحديثة .<br />
                                        2-	العمل على خلق تعليم يقود التنمية ويوفر أسس حياتية تقوم على مفاهيم الحريات .<br />
                                        3-	التفتح والتعاون والتأثير الفاعل في السياق الاجتماعي والثقافي .<br />
                                        4-	بناء وعي خلاق يخدم الثقافة الاجتماعية وبشكل فاعل .<br />
                                        5-	تحقيق التكافل بين مختلف وحدات العمل بالقطاعين الخاص والعام .<br />
                                        6-	مساعدة الأفراد على رسم خطط وسياسة وبرامج العمل لتأهيلهم للعمل بالقطاعين الخاص والعام . <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: tahoma; font-size: medium; background-color: #FF9933; color: #009900; font-weight: bold;">
                                        الرسالة 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        1-	توفير إدارة تقوم على مركزية التخطيط لا مركزية التنفيذ والتقويم وتتمتع بالديناميكية والمرونة والعمل بروح الفريق الواحد.<br />
                                        2-	تأكيد التكامل بين مؤسستنا والمؤسسات الأخرى . <br />

                                        <br />

                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family: tahoma; font-size: medium; background-color: #FF9933; color: #009900; font-weight: bold;">
                                        سياسة إعداد المدرب  
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        1.	إمداد المدرب بامتيازات خلال فترة التدريب من خبرات (وزارة التربية والتعليم – المؤسسة العامة للتدريب التقني والمهني ).<br />
                                        2.	المساهمة في إيفاد المدربات لوظائف حكومية تتناسب مع تطلعاتهم .<br />
                                        3.	الاستعانة بخبراء التربية والتعليم للإسهام في عملية التدريب.<br />

                                        <br />

                                    </td>
                                </tr>
                            </table>                      
                        </td>
                        <td>
                            <table>
                                <tr valign="top" align="center">
                                    <td valign="top" align="center">
                                        <img src="pics/g.gif" height="350" width="200"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <br />
                                        <a href="https://twitter.com/AlthaqafiCenter">
                                            <img src="pics/twitter.jpeg" height="50" width="50px" height="50px" /></a>
                                        
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
