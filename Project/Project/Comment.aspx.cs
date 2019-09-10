using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Project
{
    public partial class Comment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            projectCUPU1Entities1 entity = new projectCUPU1Entities1();
            comment com = new comment();
            var textbox1 = LoginView1.FindControl("DropDownList1") as DropDownList;
            var textbox2 = LoginView1.FindControl("TextBox2") as TextBox;
            com.PlaneID = Int32.Parse(textbox1.SelectedValue.ToString());
            com.CommentBody = textbox2.Text;
            com.Username = Membership.GetUser().ToString();

            entity.AddTocomments(com);
            entity.SaveChanges();
            Response.Redirect("Comment.aspx");
        }
    }
}