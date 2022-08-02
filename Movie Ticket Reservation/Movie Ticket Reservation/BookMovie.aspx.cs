using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Reservation
{
    public partial class BookMovie : System.Web.UI.Page
    {
        DataBaseConnection DB = new DataBaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StoreInDB(object sender, EventArgs e)
        {
            string path = HttpContext.Current.Request.Url.ToString().Split('=')[1];

            int movieid = Convert.ToInt32(path);
            string stmt = "SELECT TITLE FROM MOVIES WHERE MOVIEID = " + movieid;
            System.Data.DataTable dt = DB.GetDataFromTables(stmt);

            string title = dt.Rows[0]["TITLE"].ToString();

            Random r = new Random();
            int newno = r.Next();

            string Name = hidden.Value;

            int noof = Convert.ToInt32(hidden2.Value);
            string seat = hidden3.Value;

            seat = seat.Replace(',', '|');

            bool flag = DB.RunSP(newno,Name,movieid,noof,seat,title);
            if (flag)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Movie Booked!!!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error please try again or contact admin')", true);

            }
        }
    }
}