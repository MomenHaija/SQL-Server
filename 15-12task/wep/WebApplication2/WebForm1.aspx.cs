using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Web.Management;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection("data source =DESKTOP-B9B8CS7; database=daytask; integrated security=SSPI");
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from  city", conn);
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapt.Fill(dt);
                dlcity.DataSource = dt;
                dlcity.DataTextField = "City_Name";
                dlcity.DataValueField = "City_Id";
                dlcity.DataBind();
                conn.Close();

                string folderpath = Server.MapPath("~/iamge/");
                if (!Directory.Exists(folderpath))
                {
                    Directory.CreateDirectory(folderpath);
                }
                uploadimage.SaveAs(folderpath + uploadimage.FileName);
                Image1.ImageUrl = "~/iamge/" + uploadimage.FileName;
            }

        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            string folderpath = Server.MapPath("~/iamge/");
            if (!Directory.Exists(folderpath))
            {
                Directory.CreateDirectory(folderpath);
            }
            uploadimage.SaveAs(folderpath + uploadimage.FileName);
            Image1.ImageUrl = "iamge//" + uploadimage.FileName;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source =DESKTOP-B9B8CS7; database=daytask; integrated security=SSPI");
            conn.Open();
            SqlCommand newcomm = new SqlCommand($"insert info VALUES('{tbname.Text}',{tbage.Text}, '{tblocation.Text}','{Image1.ImageUrl}',{dlcity.SelectedValue});", conn);
            newcomm.ExecuteNonQuery();
            conn.Close();
            usersdata();
        }
        public void usersdata()
        {
            SqlConnection conn = new SqlConnection("data source =DESKTOP-B9B8CS7; database=daytask; integrated security=SSPI");
            conn.Open();
            SqlCommand newcomm = new SqlCommand($"select*from info", conn);

            SqlCommand print = new SqlCommand("select UserName city,Age,Phone_Number,path_image,city.City_Name from city  join info on city.City_Id = info.City_Id ", conn);
            SqlDataReader read = print.ExecuteReader();
           

            string table = "<table class='table table-striped'> <tr><th>Name</th> <th>Age</th> <th>Phone</th> <th>City</th> <th>Image</th>";
            while (read.Read())
            {
                //SqlCommand city = new SqlCommand($"select City_Name from city where City_Id = {read[4]}",conn);
                table += $"<tr><td>{read[0]}</td><td>{read[1]}</td><td>{read[2]}</td><td>{read[4]}</td><td><img class=\"card - img - top\" src={read[3]} alt=\"Card image\" ></td><td><Button  runat=\"server\" Text=\"HI\" OnClick=\"Click\" /></td></tr>";

                lblemployeeimage.Text +=
                "<div>" +
                "<div class=\"card\" style=\"width: 400px\">" +
                 $"<img class=\"card - img - top\" src={read[3]} alt=\"Card image\" style=\"width: 100 %\">" +
                "<div class=\"card - body\">" +
                $"<h4 class=\"card - title\">name:{read[0]}</h4>" +
                $"<p class=\"card - text\">Age:{read[1]}</p>" +
                $"<p class=\"card - text\">Phone Number:{read[2]}</p>" +
                "<ahref=\"#\" class=\"btn btn-primary\"></a></div></div>";

            }
            table += "</table";
            lbinfo.Text= table;
            conn.Close();
        }
        public void Click()
        {
            Response.Write("HI");
        }
    } 
}