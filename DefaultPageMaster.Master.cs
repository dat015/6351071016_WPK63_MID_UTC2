    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Xml.Linq;

    namespace de1
    {
        public partial class DefaultPageMaster : System.Web.UI.MasterPage
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                LoadCourses();

                }

            }
            private void LoadCourses()
            {
                QLKhoaHocEntities db = new QLKhoaHocEntities();
                try
                {
                    var courses = db.Categories
                           .Select(cat => new
                           {
                               CatName = cat.CatName, 
                               Count = cat.Courses.Count() 
                           })
                           .ToList();

                    dlCourses.DataSource = courses;
                    dlCourses.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }
            protected void btnCategory_Click(object sender, EventArgs e)
            {
                LinkButton btn = (LinkButton)sender;
                string categoryName = btn.CommandArgument;

                LoadCourse(categoryName);

            }
        protected void detailClick(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string id = btn.CommandArgument;
            Session["Id"] = id;
            Response.Redirect("Detail.aspx");

        }
        private void LoadCourse(string name)
            {
                QLKhoaHocEntities db = new QLKhoaHocEntities();
                try
                {
                    var course = db.Courses.Where(c => c.Category.CatName == name).ToList();
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