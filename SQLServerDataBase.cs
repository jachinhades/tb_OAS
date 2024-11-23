using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace tb_OAS
{
    public class SQLServerDataBase
    {
        //MySqlCon部分，每个人不相同，后面我会进行说明，下面的是我计算机相应的配置        
        private string MySqlCon = "Data Source=DESKTOP-5EMUFJI;Initial Catalog=dB_OAS;Integrated Security=True";
        public DataTable ExecuteQuery(string sqlStr)
        //用于查询；其实是相当于提供一个可以传参的函数，到时候写一个sql语句，存在string里，传给这个函数，就会自动执行。       
        {
            SqlConnection con = new SqlConnection(MySqlCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sqlStr;
            DataTable dt = new DataTable();
            SqlDataAdapter msda = new SqlDataAdapter(cmd);
            msda.Fill(dt);
            con.Close();
            return dt;
        }
        public int ExecuteUpdate(string sqlStr)//用于增删改;        
        {
            SqlConnection con = new SqlConnection(@MySqlCon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sqlStr;
            int iud = 0;
            iud = cmd.ExecuteNonQuery();
            con.Close();
            return iud;
        }
    }
}