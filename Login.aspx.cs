using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Monica_Project
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-7OCLD0J\\SQLEXPRESS;Initial Catalog=Pjp;Integrated Security=True");

        string str, UserId, UserPassword;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            string UserId = TxtUserId.Text;
            string UserPassword = TxtPassword.Text;
            str = "select * from Login where UserId='" + UserId + "' and UserPassword='" + UserPassword + "'";
            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)

            {

                TxtUserId.Text = dt.Rows[i]["UserId"].ToString();

                TxtPassword.Text = dt.Rows[i]["UserPassword"].ToString();


                if (UserId == TxtUserId.Text && UserPassword == TxtPassword.Text)

                {

                    Session["UserId"] = UserId;

                    if (dt.Rows[i]["UserPassword"].ToString() == "PjpAdmin")
                    {

                        Response.Redirect(" ");
                    }

                    else if (dt.Rows[i]["UserPassword"].ToString() == "PjpAdmin")
                    {

                        Response.Redirect("");
                    }

                    else if (dt.Rows[i]["UserPassword"].ToString() == "PjpFees")
                    {



                        Response.Redirect("~/Fees/Fee_Default.aspx");
                    }
                    else if (dt.Rows[i]["UserPassword"].ToString() == "PjpPayroll")
                    {

                        Response.Redirect(" ");
                    }

                    else

                    {
                        Label1.Text = "incorrect userid or password";
                        // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('incorrect userid or password');", true);


                    }
                }


                else

                {
                    Label1.Text = "incorrect userid or password";

                    // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('incorrect userid or password');", true);



                }
            }
        }




               
                    
               
                
            
       

        protected void BuCancel_Click(object sender, EventArgs e)
        {
            TxtUserId.Text = "";
            TxtPassword.Text = "";
        }

        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }

}