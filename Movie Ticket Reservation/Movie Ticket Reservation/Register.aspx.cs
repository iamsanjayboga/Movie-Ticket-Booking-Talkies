using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Reservation
{
    public partial class Register : System.Web.UI.Page
    {
        DataBaseConnection DB = new DataBaseConnection();
        Random rand = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterCourse(object sender, EventArgs e)
        {
            try
            {
                string Statement = "";
                //Statement = "insert into USER_TABLE(USERID, FIRSTNAME, LASTNAME, EMAIL)" +
                //    "values(" + 2 +"," + TextBox1.Text + "," + TextBox2.Text + "," + TextBox3.Text + ")";

                //string s = "INSERT INTO USER_TABLE VALUES(" + 3 + "," + "'" + TextBox1.Text + "'" + "," + "'" + TextBox2.Text + "'" + "," + "'" + TextBox3.Text + "'" + "," + "sysdate" + ")";
                int n = rand.Next();
                Statement = "INSERT INTO USER_TABLE VALUES(" + n + "," + "'" + TextBox1.Text + "'" + "," + "'" + TextBox2.Text + "'" + "," + "'" + TextBox3.Text + "'" + "," + "sysdate" + ")";
                //"INSERT INTO USER_TABLE VALUES(2,'Urjitha','dhadigam','udhadigam@govst.edu',sysdate)";

                //Statement = "insert into COURSEREGISTRATION(STUDENTID,COURSEID) " +
                //    "values(" + StuID.Text + "," + COURSE.Text + ")";

                Boolean datastatus = DB.UpdateData(Statement);
                if (datastatus == true)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Registered')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error please try again or contact admin')", true);

                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}