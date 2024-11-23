using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace tb_OAS
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Onclick(object sender, EventArgs e)
        {
            lblMsg.Text = "";
            if (Page.IsValid)
            {
                lblMsg.Text = "验证通过";

                string username = empId.Text.Trim();//获取到文本框中的用户名
                string password = pwd.Text;//获取到文本框中的密码
                string sex = empSex.Text;
                string name = empName.Text;
                DateTime birthday = empBirth.SelectedDate;
                string department = empDepart.Text;
                //连接数据库字段
                string sqlcoon = "Data Source=DESKTOP-5EMUFJI;Initial Catalog=dB_OAS;Integrated Security=True";
                string sql = "INSERT INTO tb_emp (EmpId, EmpName, EmpBirth, EmpSex, EmpDepart) VALUES (@EmpId, @EmpName, @EmpBirth, @EmpSex, @EmpDepart)";
                SqlParameter[] par = {
                new SqlParameter("@EmpName",name),
                new SqlParameter("@EmpBirth",birthday),
                new SqlParameter("@EmpSex",sex),
                new SqlParameter("@EmpId",username),
                new SqlParameter("@EmpDepart",department)

                };
                using (SqlConnection con = new SqlConnection(sqlcoon))//SqlConnection连接，用using释放连接

                {
                    using (SqlCommand com = new SqlCommand(sql, con))//SqlCommand连接，用using释放连接

                    {
                        com.Parameters.AddRange(par);
                        //打开连接
                        con.Open();

                        int resert = Convert.ToInt32(com.ExecuteScalar());
                        //关闭连接
                        con.Close();
                        //释放连接
                        // con.Dispose();
                    }
                }
            }
        }

    }
}