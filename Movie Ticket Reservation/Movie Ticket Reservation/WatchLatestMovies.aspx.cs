using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie_Ticket_Reservation
{
    public partial class WatchLatestMovies : System.Web.UI.Page
    {
        DataBaseConnection DB = new DataBaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["MovieId"]);
                if(id == 0)
                {
                    id = 101;
                }
                if(id != 0 )
                {
                    DataTable dt = Load(id);
                    if(dt != null && dt.Rows.Count > 0)
                    {
                        LoadData(dt);
                    }
                }
                Movies();
            }
            catch(Exception ex)
            {
                
            }
        }

        public DataTable Load(int ID)
        {
            DataTable dt = new DataTable();
            dt = DB.GetDataFromTables("SELECT * FROM FETCH_MOVIE_RECORDS where MOVIEID=" + ID);

            return dt;
        }

        public void LoadData(DataTable dt)
        {
            Session["MovieID"] = dt.Rows[0]["MOVIEID"] == null ? "" : dt.Rows[0]["MOVIEID"].ToString();
            moviename.Text += dt.Rows[0]["TITLE"] == null ? "" : dt.Rows[0]["TITLE"].ToString();
            description.Text += dt.Rows[0]["DESCRIPTION"] == null ? "" : dt.Rows[0]["DESCRIPTION"].ToString();

            language.Text += dt.Rows[0]["LANGUAGE"] == null ? "" : dt.Rows[0]["LANGUAGE"].ToString();
            Release_Date.Text += dt.Rows[0]["RELEASE_DATE"] == null ? "" : dt.Rows[0]["RELEASE_DATE"].ToString();
            Director.Text += dt.Rows[0]["DIRECTOR"] == null ? "" : dt.Rows[0]["DIRECTOR"].ToString();

            Genre.Text += dt.Rows[0]["GENRENAME"] == null ? "" : dt.Rows[0]["GENRENAME"].ToString();
            Actor.Text += dt.Rows[0]["FULL_NAME"] == null ? "" : dt.Rows[0]["FULL_NAME"].ToString();
            Stars.Text += dt.Rows[0]["STARS"] == null ? "" : dt.Rows[0]["STARS"].ToString();
        }

        private void Movies()
        {
            DataTable CoursesData = new DataTable();
            CoursesData = DB.GetDataFromTables("SELECT * FROM FETCH_MOVIE_RECORDS");
            GridView2.DataSource = CoursesData;
            GridView2.DataBind();
        }

        protected void bookmovie(object sender, EventArgs e)
        {
            string s = Session["MovieID"].ToString();
            Response.Redirect("BookMovie.aspx?MovieId=" + s);
        }
    }
}