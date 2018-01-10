using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using System.Data.SqlClient;
using System.Data;



namespace InstituteSite.UC
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            webSiteMenu.Flow = (ItemFlow)Enum.Parse(typeof(ItemFlow), "Vertical", true);
            

            webSiteMenu.Height = 150;
            

            webSiteMenu.Items.Clear();
            RadMenuItem defMenuItem = new RadMenuItem("الصفحة الرئيسة");
            defMenuItem.Value = "0";
            defMenuItem.Text = "الصفحة الرئيسة";
            defMenuItem.NavigateUrl = @"~/Default.aspx";
            webSiteMenu.Items.Add(defMenuItem);

            RadMenuItem defMenuCoursesInfo = new RadMenuItem("الدورات المتوفرة");
            defMenuCoursesInfo.Value = "13";
            defMenuCoursesInfo.Text = "الدورات المتوفرة";
            defMenuCoursesInfo.NavigateUrl = @"~/CoursesInfo.aspx";
            webSiteMenu.Items.Add(defMenuCoursesInfo);

            RadMenuItem jobApply = new RadMenuItem("التوظيف");
            jobApply.Value = "113";
            jobApply.Text = "التوظيف";
            jobApply.NavigateUrl = @"~/jobApply.aspx";
            webSiteMenu.Items.Add(jobApply);
                
            RadMenuItem defMenuNotes = new RadMenuItem("ملاحظاتكم");
            defMenuNotes.Value = "12";
            defMenuNotes.Text = "ملاحظاتكم";
            defMenuNotes.NavigateUrl = @"~/FeedBack.aspx";
            webSiteMenu.Items.Add(defMenuNotes);

            RadMenuItem defMenuContactUs = new RadMenuItem("اتصل بنا");
            defMenuContactUs.Value = "121";
            defMenuContactUs.Text = "اتصل بنا";
            defMenuContactUs.NavigateUrl = @"~/ContactUs.aspx";
            webSiteMenu.Items.Add(defMenuContactUs);

            RadMenuItem defMenuMap= new RadMenuItem("موقعنا");
            defMenuMap.Value = "1231";
            defMenuMap.Text = "موقعنا";
            defMenuMap.NavigateUrl = @"~/Map.aspx";
            webSiteMenu.Items.Add(defMenuMap);
            
            foreach (RadMenuItem item in webSiteMenu.GetAllItems())
            {
                item.DataBind();
            }   
        }                
    }        
}
