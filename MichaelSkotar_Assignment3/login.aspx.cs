using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MichaelSkotar_Assignment3 {
    public partial class login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e) {
            if (authenticate(Login1.UserName, Login1.Password)) {
                e.Authenticated = true;
            }
        }

        private bool authenticate(string name, string pass) {
            if (name.Equals("admin") && pass.Equals("admin")) {
                return true;
            } else {
                return false;
            }
        }
    }
}