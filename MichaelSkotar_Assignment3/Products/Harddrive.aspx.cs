using MichaelSkotar_Assignment3.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MichaelSkotar_Assignment3.Products {
    public partial class Harddrive : System.Web.UI.Page {

        Product p = new Product();
        

        protected void Page_Load(object sender, EventArgs e) {

            using (SqlConnection connection = new SqlConnection("Server=tcp:mik2.database.windows.net,1433;Initial Catalog=products;Persist Security Info=False;User ID=mik;Password=Az6KAUxR;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {

                // Open connection and Sql Command
                connection.Open();
                SqlCommand com = new SqlCommand("SELECT * FROM products WHERE Name='Western Digital'", connection);
                SqlDataReader reader = com.ExecuteReader();

                // output string
                while (reader.Read()) {
                    p.Name = reader[0].ToString();
                    p.Price = reader[1].ToString();
                    p.Id = reader[2].ToString();
                }

                price.InnerHtml = "$" + p.Price;
                connection.Close();
            }
        }

        protected void PurchaseBtn_Click(object sender, EventArgs e) {

            double total = Convert.ToInt32(quantity.Text) * Convert.ToDouble(p.Price);
            CartItem c = new Models.CartItem(p, Convert.ToInt32(quantity.Text), total);
            Startup.cart.Add(c);
            Session["shoppingcart"] = Startup.cart;
            Response.Redirect("../Default.aspx");
        }

        protected void RateBtn_Click(object sender, EventArgs e) {
            using (SqlConnection connection = new SqlConnection("Server=tcp:mik2.database.windows.net,1433;Initial Catalog=products;Persist Security Info=False;User ID=mik;Password=Az6KAUxR;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {

                // Query
                string query = "INSERT INTO rating(ProductId, ProductRating, Comment) VALUES (@productid, @rating, @comment)";

                // Open connection and Sql Command
                connection.Open();
                SqlCommand com = new SqlCommand(query, connection);

                // Parameters
                com.Parameters.AddWithValue("@productid", p.Id);
                com.Parameters.AddWithValue("@rating", rating.SelectedValue);
                com.Parameters.AddWithValue("@comment", comment.Text);

                com.ExecuteNonQuery();
                connection.Close();
            }
        }
    }
}