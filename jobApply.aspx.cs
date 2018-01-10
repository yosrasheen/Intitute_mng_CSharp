using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace InstituteSite
{
    public partial class jobApply : TemplatePage
    {
        public DataTable getAllJobs()
        {
            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            string query = "select Job_ID , Job_Name, Job_Salary, Job_Qualification from Jobs ";
            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();

            SqlCommand dbCommand = new SqlCommand();
            dbCommand = new SqlCommand(query, dbConnection);
            SqlDataReader queryData = dbCommand.ExecuteReader();
            DataTable dt = new DataTable();
            if (queryData.HasRows)
            {
                dt.Load(queryData);
                return dt;
            }
            else
                return null;
        }

        public int saveCandidate(string path)
        {
            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            string query = "insert into candidates (candidate_Identification,candidate_Name,candidate_CV_Path," +
                            " candidate_Job_ID,Mobile,Email,Address,Phone,City)" +
                            " values ( '" + txtIdent.Text + "','" + txtName.Text + "','" + path +
                            "'," + int.Parse(drpJobs.SelectedValue.ToString()) +
                            ", '" + txtMobile.Text + "','" + Email.Text + "','" + txtAddress.Text +
                            "','" + txtPhone.Text + "','" + City.Text + "')";

            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();

            SqlCommand dbCommand = new SqlCommand();
            dbCommand = new SqlCommand(query, dbConnection);
            int rows = dbCommand.ExecuteNonQuery();
            if (rows == 1)
            {
                return 1;
            }
            else
                return 0;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            drpJobs.DataSource = getAllJobs();
            drpJobs.DataBind();
            
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    if (FileUpload1.PostedFile.ContentType == "application/pdf"
                        || FileUpload1.PostedFile.ContentType == "application/doc"
                        || FileUpload1.PostedFile.ContentType == "application/winword"
                        || FileUpload1.PostedFile.ContentType == "application/msword"
                        || FileUpload1.PostedFile.ContentType == "image/jpeg"
                        || FileUpload1.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUpload1.PostedFile.ContentLength < 5512000)
                        {
                            string filename = Path.GetFileName(FileUpload1.FileName);
                            FileUpload1.SaveAs(Server.MapPath(@"~\CV\") + filename);
                            int v = saveCandidate(Server.MapPath(@"~\CV\") + filename);
                            lblHead.Text = "تم حفظ الطلب";
                        }
                        else
                            lblHead.Text = "خطأ.. حجم الملف كبير جدا.. يرجي عدم ارفاق مل أكبر من 5 ميجا";
                    }
                    else
                        lblHead.Text = "خطأ في امتداد الملف";
                }
                catch (Exception ex)
                {
                    lblHead.Text = "خطأ في رفع الملف";
                }
            }
        }
    }
}
