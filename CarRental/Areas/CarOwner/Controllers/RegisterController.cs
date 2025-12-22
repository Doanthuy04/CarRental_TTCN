using CarRental.Models;
using CarRental.Utilities;
using Microsoft.AspNetCore.Mvc;

namespace CarRental.Areas.CarOwner.Controllers
{
    [Area("CarOwner")]
    public class RegisterController : Controller
    {
        private readonly DbRenalCarContext _context;

        public RegisterController(DbRenalCarContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(Account account)
        {
            if (account == null)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                // Kiểm tra email hoặc username đã tồn tại chưa
                var checkEmail = _context.Accounts.Where(m => m.Email == account.Email).FirstOrDefault();
                var checkUsername = _context.Accounts.Where(m => m.Username == account.Username).FirstOrDefault();

                if (checkEmail != null)
                {
                    Function._Message = "Email đã được sử dụng";
                    return View(account);
                }

                if (checkUsername != null)
                {
                    Function._Message = "Username đã được sử dụng";
                    return View(account);
                }

                // Tạo tài khoản mới với role Chủ xe (RoleId = 3)
                Function._Message = string.Empty;
                account.Password = Function.MD5Password(account.Password);
                account.RoleId = 3; // RoleId 3 = Chủ xe
                account.IsActive = true;

                _context.Accounts.Add(account);
                _context.SaveChanges();

                Function._Message = "Đăng ký thành công! Vui lòng đăng nhập.";
                return RedirectToAction("Index", "Login");
            }

            return View(account);
        }
    }
}

