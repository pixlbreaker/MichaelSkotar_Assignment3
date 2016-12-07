using MichaelSkotar_Assignment3.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MichaelSkotar_Assignment3 {
    public partial class Admin : System.Web.UI.Page {

        List<string> names = new List<string>();
        List<string> rates = new List<string>();

        protected void Page_Load(object sender, EventArgs e) {

            using (SqlConnection connection = new SqlConnection("Server=tcp:mik2.database.windows.net,1433;Initial Catalog=products;Persist Security Info=False;User ID=mik;Password=Az6KAUxR;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {

                // Open connection and Sql Command
                connection.Open();
                SqlCommand com = new SqlCommand("SELECT * FROM rating", connection);
                SqlDataReader reader = com.ExecuteReader();

                // output string
                string output = "";
                while (reader.Read()) {
                    string name = "";
                    switch (reader[1].ToString()) {
                        case "1":
                            name = "Western Digital";
                            break;
                        case "2":
                            name = "Samsung 850 EVO";
                            break;
                        case "3":
                            name = "SanDisk 32 GB";
                            break;
                    }
                    output += "<tr><td>" + name + "</td><td>" + reader[2].ToString() + "</td><td>" + reader[3].ToString() + "</td></tr>";
                }
                ratingcont.InnerHtml = output;
                connection.Close();

                connection.Open();
                SqlCommand com2 = new SqlCommand("SELECT * FROM sales", connection);
                SqlDataReader reader2 = com2.ExecuteReader();

                // output string
                string output2 = "";
                while (reader2.Read()) {
                    string name = "";
                    switch (reader2[1].ToString()) {
                        case "1":
                            name = "Western Digital";
                            break;
                        case "2":
                            name = "Samsung 850 EVO";
                            break;
                        case "3":
                            name = "SanDisk 32 GB";
                            break;
                    }
                    output2 += "<tr><td>" + name + "</td><td>" + reader2[2].ToString() + "</td><td>" + reader2[3].ToString() + "</td></tr>";
                }
                salescont.InnerHtml = output2;

                connection.Close();
            }
        }
    }
}