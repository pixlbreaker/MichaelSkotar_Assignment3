using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MichaelSkotar_Assignment3.Models {
    public class CartItem {

        public Product Product { get; set; }
        public int Quantity { get; set; }
        public double Total { get; set; }

        public CartItem(Product p, int Quantity, double total) {
            this.Product = p;
            this.Quantity = Quantity;
            Total = total;
        }
    }
}