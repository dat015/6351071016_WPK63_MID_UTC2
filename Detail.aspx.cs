using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace de1
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                if (!IsPostBack)
                {
                  
                        QLKhoaHocEntities db = new QLKhoaHocEntities();
                        try
                        {
                            int id = int.Parse(Session["Id"].ToString());
                        var course = db.Courses
                         .Where(c => c.ID == id)
                         .Select(c => new
                         {

                             CategoryName = c.Category.CatName,
                             Duration = c.Duration,
                             Description = c.Description,
                             numberView = c.NumViews
                         }).ToList();
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
    }
}