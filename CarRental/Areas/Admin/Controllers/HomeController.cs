using CarRental.Models;
using CarRental.Utilities;
using Microsoft.AspNetCore.Mvc;

namespace CarRental.Areas.Admin.Controllers
{
    
    public class HomeController : Controller
    {
        private readonly DbRenalCarContext _context;

        public HomeController(DbRenalCarContext context)
        {
            _context = context;
        }

        [Area("Admin")]
        public IActionResult Index()
        {
            // Kiểm tra trạng thái đăng nhập và quyền Admin
            if (!Function.IsLogin(HttpContext.Session) || !Function.IsAdmin(HttpContext.Session))
            {

                return RedirectToAction("Index", "Login", new { area = "Admin" });
            }

            // Thống kê người dùng & chủ xe (ép sang chuỗi để hiển thị chắc chắn)
            // Đếm tất cả accounts (không bao gồm admin - RoleId = 1)
            ViewBag.TotalCustomers = _context.Accounts.Count(a => a.RoleId != 1).ToString();
            ViewBag.TotalCarOwners = _context.Accounts.Count(a => a.RoleId == 3).ToString();

            return View();
        }
        [Area("Admin")]

        public IActionResult Logout() {
            Function.ClearSession(HttpContext.Session);
            return RedirectToAction("Index", "Home");

        }
    }
}
