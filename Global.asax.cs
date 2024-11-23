using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.SessionState;

namespace tb_OAS
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptResourceDefinition scriptResDef = new ScriptResourceDefinition();
            scriptResDef.Path = "~/Scripts/jquery-3.6.0.min.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", scriptResDef);
        }
    }
}