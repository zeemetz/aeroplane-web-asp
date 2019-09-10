using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertPlane_Click(object sender, EventArgs e)
        {
            projectCUPU1Entities1 entity = new projectCUPU1Entities1();
            plane pl = new plane();
            var textbox1 = LoginView1.FindControl("TextBox1") as TextBox;
            var textbox2 = LoginView1.FindControl("DropDownList1") as DropDownList;
            var textbox3 = LoginView1.FindControl("DropDownList2") as DropDownList;
            var textbox4 = LoginView1.FindControl("TextBox4") as TextBox;
            var textbox5 = LoginView1.FindControl("DropDownList3") as DropDownList;

            pl.PlaneName = textbox1.Text;
            pl.PlaneType = textbox2.SelectedValue.ToString();
            pl.EngineType = textbox3.SelectedValue.ToString();
            pl.NumberOfEngine = Int32.Parse(textbox4.Text);
            pl.PlaneImage = textbox5.SelectedValue.ToString();

            entity.AddToplanes(pl);
            entity.SaveChanges();

            Response.Redirect("Plane.aspx");
        }
    }
}