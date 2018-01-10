<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="CoursesInfo.aspx.cs" Inherits="InstituteSite.CoursesInfo" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    </telerik:RadWindowManager>
    <fieldset>
        <legend>
            <asp:Label ID="lblPageLable" runat="server" Text="الدورات المتوفرة"></asp:Label>
        </legend>
        <div runat="server" id="divPatientData">
            <center>
                <table width="100%" border="0" cellpadding="2" cellspacing="2" 
                    style="border: medium groove #CC0000; font-size:medium; vertical-align: middle; text-align: center;">
                    <colgroup>
                        <col width="40%" />
                        <col width="30%" />
                        <col width="40%" />
                    </colgroup>
                    <tr valign="middle">
                        <td colspan="1" bgcolor="#006600" style="font-family: Tahoma; font-size: large; vertical-align: middle; text-align: center;">
                            مسمى البرنامج
                        </td>
                       <td bgcolor="#006600" style="font-family: Tahoma; font-size: large; vertical-align: middle; text-align: center; ">
                            العرض الحالي	
                        </td>
                        <td bgcolor="#006600" style="font-family: Tahoma; font-size: large; vertical-align: middle; text-align: center;">
                            الاعتماد                        
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" bgcolor="#FECC32">
                            دبلوم برمجيات (سنتين )
                        </td>
                       <td bgcolor="#FECC32">
                            10000 نقدي <br />
                            أقساط سنوية 5500 =11000<br />
                            أقساط فصليه 3500 =14000<br />
                            أقساط شهرية 1000=16000
                        </td>
                        <td bgcolor="#FECC32">
                            المؤسسة العامة للتعليم الفني والتدريب المهني مصنف على المرتبة 7 في ديوان الخدمة المدنية مع إمكانية المواصلة الدراسة الجامعيه بعد المعادلة تعادل نقاط الماجستير للمؤهل الجامعي                        
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                           دوره 6 اشهر إدخال بيانات ومعالجه نصوص 3000 ريال مع امكانية  الاقساط 3500 معتمدة من المؤسسة العامة للتعليم الفني والتدريب المهني (نقطتين في ديوان الخدمة )                
                        </td>
                    </tr>
                    <tr >
                        <td colspan="3" bgcolor="#FECC32">
                            دورة استخدام الحاسب الالي في الإعمال المكتبية 2500 ريال مع امكانية الاقساط 3000 المؤسسة العامة للتعليم الفني والتدريب المهني (نقطة في ديوان الخدمة ) في نظام المفاضلة
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            برنامج معارف
                        </td>
                       <td>
                            (أسبوع (700)	
                        </td>
                        <td>
                            المؤسسة العامة للتعليم الفني والتدريب المهني                        
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" bgcolor="#FECC32">
                            برنامج تصميم (photo shop)
                        </td>
                       <td bgcolor="#FECC32">
                            (شهر (1200)
                        </td>
                        <td bgcolor="#FECC32">
                            المؤسسة العامة للتعليم الفني والتدريب المهني                        
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            مقدمة تطبيقات الحاسب (ملف المعلمة )1 <br />
                            تطبيقات الحاسب المتقدم (ملف المعلمة ) 2<br />
                            *(استخدام الحاسب الالي ي إدارة المكاتب والسكرتارية )

                        </td>
                       <td>
                            شهر (1000) <br />
                            شهر (1000 )<br />
                            شهر (1000)
                        </td>
                        <td>
                            المؤسسة العامة للتعليم الفني والتدريب المهني <br />
                            (جديد ) المؤسسة العامة للتعليم الفني والتدريب المهني
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" bgcolor="#FECC32">
                            اللغة الانجليزية
                        </td>
                       <td bgcolor="#FECC32">
                            (1000 ) للمستوى
                        </td>
                        <td bgcolor="#FECC32">
                            معتمد من المعهد 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            اللغة الفرنسية
                        </td>
                       <td>
                            تأسيسي
                        </td>
                        <td>
                            معتمد من المعهد 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" bgcolor="#FECC32">
                           دبلوم اللغة الانجليزية
                        </td>
                       <td colspan="2" bgcolor="#FECC32">
                            دبلوم اللغة الانجليزية	معتمد من الأكاديمية الأمريكية (بجدة)
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            New Headway <br />
                            مستوين 3 اشهر                   
                        </td>
                       <td>
                            1900  نقدا<br />
                            2200 اقساط
                        </td>
                        <td>
                            وزارة التربية والتعليم (نقطة في ديوان الخدمة )
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" bgcolor="#FECC32">
                            New Headway <br />
                            مستوين 6 اشهر                   
                        </td>
                       <td bgcolor="#FECC32">
                            3800  نقدا<br />
                            4200 اقساط
                        </td>
                        <td bgcolor="#FECC32">
                            وزارة التربية والتعليم (نقطتين في ديوان الخدمة )
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </fieldset>
</asp:Content>

