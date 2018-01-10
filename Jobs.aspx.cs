using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace InstituteSite
{
    public class jobs
    {
        public int Job_ID {get;set;}
        public string Job_Name {get;set;}
        public decimal Job_Salary {get;set;}
        public string Job_Qualification { get; set; }
    }

    public partial class Jobs : TemplatePage
    {
        enum PageMode
        {
            Add = 1,
            Edit= 2
        }
        private PageMode Mode = PageMode.Add;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            ClearUI();
            div1.Visible = true;
            Mode = PageMode.Add;
            SaveViewState();
        }
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

        public jobs getJob(int jobID)
        {
            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            string query = "select Job_ID , Job_Name, Job_Salary, Job_Qualification from Jobs where Job_ID=" + jobID;
            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();

            SqlCommand dbCommand = new SqlCommand();
            dbCommand = new SqlCommand(query, dbConnection);
            SqlDataReader queryData = dbCommand.ExecuteReader();
            DataTable dt = new DataTable();
            if (queryData.HasRows)
            {
                dt.Load(queryData);
                jobs job = new jobs();
                job.Job_ID = int.Parse(dt.Rows[0][0].ToString());
                job.Job_Name = dt.Rows[0][1].ToString();
                job.Job_Salary = decimal.Parse( dt.Rows[0][2].ToString());
                job.Job_Qualification = dt.Rows[0][3].ToString();
                return job;
            }
            else
                return null;
        }

        public static int deleteJob(decimal jobID)
        {
            string query = "delete jobs where Job_ID = " + jobID;
            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();
            SqlCommand dbCommand = new SqlCommand();

            SqlCommand myCommand = new SqlCommand(query, dbConnection);
            int rows = myCommand.ExecuteNonQuery();
            return rows;
        }

        public static int insertJob(jobs job)
        {
            string query = "insert into jobs (Job_ID , Job_Name, Job_Salary, Job_Qualification) values (" + job.Job_ID +
                ",'" + job.Job_Name + "'," + job.Job_Salary + ",'" + job.Job_Qualification + "')";

            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();
            SqlCommand dbCommand = new SqlCommand();

            SqlCommand myCommand = new SqlCommand(query, dbConnection);
            int rows = myCommand.ExecuteNonQuery();
            return rows;
        }

        public static int updateJob(jobs job)
        {
            string query = "update jobs Job_Name='" + job.Job_Name + "', Job_Salary = "+ job.Job_Salary +
                ", Job_Qualification ='" + job.Job_Qualification + "') where Job_ID = " + job.Job_ID;

            string connection = @"Server=ADMIN-DC8F2C7DE\SQLEXPRESS;Database=InstituteSite;Trusted_Connection=True;";

            SqlConnection dbConnection = new SqlConnection(connection);
            dbConnection.Open();
            SqlCommand dbCommand = new SqlCommand();

            SqlCommand myCommand = new SqlCommand(query, dbConnection);
            int rows = myCommand.ExecuteNonQuery();
            return rows;
        }

        protected void grdJobs_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {
            grdJobs.DataSource = getAllJobs();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            jobs job = GetDataFormPage();
            if (Mode == PageMode.Add)
                insertJob(job);
            else
            {
                job.Job_ID= int.Parse(hdnID2.Value);
                updateJob(job);
            }

            grdJobs.DataSource =getAllJobs();
            grdJobs.DataBind();
            div1.Visible = false;
        }

        

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            jobs job = GetDataFormPage();
            job.Job_ID = int.Parse(hdnID2.Value);
            deleteJob(job.Job_ID);

            grdJobs.DataSource = getAllJobs();
            grdJobs.DataBind();
            div1.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            div1.Visible = false;
            Mode = PageMode.Add;
        }

        private jobs GetDataFormPage()
        {
            jobs job = new jobs();
            job.Job_Name = txtJobName.Text;
            job.Job_Salary = decimal.Parse(txtJobSalary.Text.ToString());
            job.Job_Qualification = txtJobName.Text;
            return job;
        }

        private void exposeData(jobs job)
        {
            hdnID2.Value = job.Job_ID.ToString();
            txtJobName.Text = job.Job_Salary.ToString();
            txtJobSalary.Text = job.Job_Salary.ToString();
            txtJobName.Text = job.Job_Qualification.ToString();
            div1.Visible = true;
        }

        protected void grdJobs_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            if (e.CommandName == "EditData")
            {
                HiddenField hdnID = (HiddenField)e.Item.FindControl("hdnID");
                int jobID = int.Parse(hdnID.Value);
                jobs job = getJob(jobID);
                if (job != null)
                {
                    Mode = PageMode.Edit;
                    exposeData(job);
                }
            }
        }

        protected override object SaveViewState()
        {
            ViewState["Mode"] = Mode;
            return base.SaveViewState();
        }

        protected override void LoadViewState(object savedState)
        {
            base.LoadViewState(savedState);
            Mode = (PageMode)ViewState["Mode"];
        }

        private void ClearUI()
        {
            txtJobName.Text = "";
            txtJobSalary.Text = "";
            txtJobName.Text = "";
        }
    }
}
