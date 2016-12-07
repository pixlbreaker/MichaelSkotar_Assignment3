using MichaelSkotar_Assignment3.Models;
using Microsoft.Owin;
using Owin;
using System.Collections.Generic;

[assembly: OwinStartupAttribute(typeof(MichaelSkotar_Assignment3.Startup))]
namespace MichaelSkotar_Assignment3
{
    public partial class Startup {
        public static List<CartItem> cart = new List<CartItem>();
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
