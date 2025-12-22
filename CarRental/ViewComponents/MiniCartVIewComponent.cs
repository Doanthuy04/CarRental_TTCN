using CarRental.Extensions;
using CarRental.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CarRental.ViewComponents
{
    public class MiniCartVIewComponent:ViewComponent
    {
        const string CART_KEY = "MYCART";
        public IViewComponentResult Invoke()
        {
            var cart = HttpContext.Session.Get<List<CartItemsVM>>(CART_KEY) ?? new List<CartItemsVM>();
            return View(cart);
        }
    }
}
