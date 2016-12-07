using MichaelSkotar_Assignment3.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MichaelSkotar_Assignment3 {
    public partial class ShoppingCart : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            var cart = (List<CartItem>)Session["shoppingcart"];
            cartlist.DataSource = cart;
            cartlist.DataBind();
        }

        protected void Delete_Click(object sender, EventArgs e) {
           Button btn = (Button)sender;
           foreach(CartItem item in Startup.cart) {
                if (item.Product.Name.Equals(btn.ToolTip) && item.Quantity.Equals(btn.ToolTip)) {
                    Startup.cart.Remove(item);
                }
            }

        }

        protected void Buy_Click(object sender, EventArgs e) {
            foreach (CartItem item in Startup.cart) {
                using (SqlConnection connection = new SqlConnection("Server=tcp:mik2.database.windows.net,1433;Initial Catalog=products;Persist Security Info=False;User ID=mik;Password=Az6KAUxR;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {

                    // Query
                    string query = "INSERT INTO sales(ProductId, Quantity, Price) VALUES (@productid, @quantity, @price)";

                    // Open connection and Sql Command
                    connection.Open();
                    SqlCommand com = new SqlCommand(query, connection);

                    // Parameters
                    com.Parameters.AddWithValue("@productid", item.Product.Id);
                    com.Parameters.AddWithValue("@quantity", item.Quantity);
                    com.Parameters.AddWithValue("@price", item.Total);

                    com.ExecuteNonQuery();
                    connection.Close();
                }
            }
            Startup.cart.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}