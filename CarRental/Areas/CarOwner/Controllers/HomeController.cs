using CarRental.Models;
using CarRental.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CarRental.Areas.CarOwner.Controllers
{
    [Area("CarOwner")]
    public class HomeController : Controller
    {
        private readonly DbRenalCarContext _context;

        public HomeController(DbRenalCarContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            // Kiểm tra đăng nhập và role
            if (!Function.IsLogin(HttpContext.Session))
            {
                return RedirectToAction("Index", "Login", new { area = "" });
            }

            // Kiểm tra role chủ xe
            var accountId = Function.GetAccountId(HttpContext.Session);
            var account = _context.Accounts
                .Include(a => a.Role)
                .FirstOrDefault(a => a.AccountId == accountId);

            if (account == null || account.RoleId != 3) // RoleId 3 = Chủ xe
            {
                Function.SetMessage(HttpContext.Session, "Bạn không có quyền truy cập trang này");
                return RedirectToAction("Index", "Home", new { area = "" });
            }

            // Lấy thống kê
            var ownerId = Function.GetAccountId(HttpContext.Session);
            var totalCars = _context.Cars.Count(c => c.OwnerId == ownerId);
            var activeCars = _context.Cars.Count(c => c.OwnerId == ownerId && c.IsActive);
            var totalOrders = _context.OrderDetails
                .Include(od => od.Order)
                .Count(od => od.Car != null && od.Car.OwnerId == ownerId);
            var totalRevenue = _context.OrderDetails
                .Include(od => od.Order)
                .Where(od => od.Car != null && od.Car.OwnerId == ownerId && od.Order.StatusId == 3) // Đã thanh toán
                .Sum(od => od.Price * od.Quantity) ?? 0;

            ViewBag.TotalCars = totalCars;
            ViewBag.ActiveCars = activeCars;
            ViewBag.TotalOrders = totalOrders;
            ViewBag.TotalRevenue = totalRevenue;

            // Lấy danh sách xe gần đây
            var recentCars = _context.Cars
                .Include(c => c.Type)
                .Where(c => c.OwnerId == ownerId)
                .OrderByDescending(c => c.CarId)
                .Take(5)
                .ToList();

            ViewBag.RecentCars = recentCars;

            return View();
        }

        public IActionResult Logout()
        {
            Function.ClearSession(HttpContext.Session);
            return RedirectToAction("Index", "Home", new { area = "" });
        }
    }
}

