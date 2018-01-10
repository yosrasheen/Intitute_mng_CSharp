using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace InstituteSite
{
    public partial class FeedBack : TemplatePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static int addNewNotes(string name, string note, string email, string mobile)
        {
            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();
            try
            {
                SqlCommand dbCommand = new SqlCommand();
                string sqlQuery = "insert into Notes (Note,Name,Email,Mobile) values ( '" +
                                 note + "' ,'" + name + "' ,'" + email + "' ,'" + mobile + "' )";

                SqlCommand myCommand = new SqlCommand(sqlQuery, dbConnection);
                int rows = myCommand.ExecuteNonQuery();
                if (rows == 1)
                {
                    return 1;
                }
                else
                    return 0;
            }
            catch (Exception e)
            {
                return 0;
            }
            finally
            {
                try
                {
                    dbConnection.Close();
                }
                catch
                {
                    dbConnection = null;
                }
            }
        }
        protected void btnRegisterNotes_Click(object sender, EventArgs e)
        {
            int reg = addNewNotes(txtName.Text, txtNotes.Text, txtEmail.Text, txtMobile.Text);

            if (reg == 1)
            {
                lblRegister.Text = "تم تسجيل ملاحظتكم";
                //Response.Redirect("/Default.aspx");
            }
            else
            {
                lblRegister.Text = "خطأ أثناء تسجيل ملاحظتكم";
            }

        }
    }
}