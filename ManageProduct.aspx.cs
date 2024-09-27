using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace de1
{
    public partial class ManageProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourse();
            }
        }
       
        private void LoadCourse()
        {
            QLKhoaHocEntities db = new QLKhoaHocEntities();
            try
            {
                var course = db.Courses.ToList();
                rptCourse.DataSource = course;
                rptCourse.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        
    }
}