using CarRental.Models;
using CarRental.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CarRental.Areas.CarOwner.Controllers
{
    [Area("CarOwner")]
    public class LoginController : Controller
    {
        private readonly DbRenalCarContext _context;

        public LoginController(DbRenalCarContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Index(string? ReturnUrl = null)
        {
            // Redirect về trang tài khoản để đăng ký chủ xe
            return RedirectToAction("Index", "Accounts", new { area = "" });
        }

        [HttpPost]
        public IActionResult Index(Account account, string? ReturnUrl)
        {
            if (account == null)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                // Mã hóa mật khẩu trước khi kiểm tra
                string p = Function.MD5Password(account.Password);

                // Kiểm tra tài khoản có tồn tại và là chủ xe (RoleId = 3)
                var check = _context.Accounts
                    .Include(a => a.Role)
                    .Where(m => (m.Email == account.Email || m.Username == account.Email) && 
                                m.Password == p && 
                                m.RoleId == 3) // RoleId 3 = Chủ xe
                    .FirstOrDefault();

                if (check == null)
                {
                    Function.SetMessage(HttpContext.Session, "Sai thông tin đăng nhập hoặc bạn không phải chủ xe");
                    return RedirectToAction("Index", "Login");
                }

                // Kiểm tra tài khoản có bị khóa không
                if (check.IsActive == false)
                {
                    Function.SetMessage(HttpContext.Session, "LOCKED");
                    return RedirectToAction("Index", "Accounts", new { area = "" });
                }

                // Đăng nhập thành công - lưu vào Session
                Function.SetMessage(HttpContext.Session, string.Empty);
                Function.SetAccountId(HttpContext.Session, check.AccountId);
                Function.SetCarOwnerAccountId(HttpContext.Session, check.AccountId);
                Function.SetUserName(HttpContext.Session, string.IsNullOrEmpty(check.Username) ? string.Empty : check.Username);
                Function.SetEmail(HttpContext.Session, string.IsNullOrEmpty(check.Email) ? string.Empty : check.Email);

                // Check if the ReturnUrl is not null and is a local URL
                if (!string.IsNullOrEmpty(ReturnUrl) && Url.IsLocalUrl(ReturnUrl))
                {
                    return Redirect(ReturnUrl);
                }
                else
                {
                    // Redirect to CarOwner dashboard
                    return RedirectToAction("Index", "Home");
                }
            }

            return View();
        }
    }
}

