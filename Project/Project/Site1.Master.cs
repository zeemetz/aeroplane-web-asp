using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userCount.Text = "User Online : " + Application.Get("userOnline").ToString() + " Users";
            
            userCount.Text = "User Online : " + Membership.GetNumberOfUsersOnline().ToString() + " Users";
            clock.Text = DateTime.Now.ToString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            clock.Text = DateTime.Now.ToString();
        }

        protected void Unnamed1_Tick(object sender, EventArgs e)
        {
            clock.Text = DateTime.Now.ToString();
        }
    }
}