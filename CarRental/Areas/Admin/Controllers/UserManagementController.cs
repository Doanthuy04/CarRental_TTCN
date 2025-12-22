using System.Linq;
using CarRental.Models;
using CarRental.Utilities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;

namespace CarRental.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UserManagementController : Controller
    {
        private readonly DbRenalCarContext _context;

        public UserManagementController(DbRenalCarContext context)
        {
            _context = context;
        }

        // GET: Admin/UserManagement
        public IActionResult Index(string searchString, string filterType)
        {
            // Kiểm tra trạng thái đăng nhập
            if (!Function.IsLogin())
            {
                return RedirectToAction("Index", "Login");
            }

            // Quản lý người dùng = Quản lý Accounts (bao gồm cả Accounts từ Customers và Accounts đăng ký trực tiếp)
            // Lấy tất cả accounts từ bảng Accounts
            var accounts = _context.Accounts
                .Include(a => a.Role)
                .AsQueryable();

            // Tìm kiếm
            if (!string.IsNullOrEmpty(searchString))
            {
                accounts = accounts.Where(a =>
                    (a.Username != null && a.Username.Contains(searchString)) ||
                    (a.FullName != null && a.FullName.Contains(searchString)) ||
                    (a.Email != null && a.Email.Contains(searchString)) ||
                    (a.Phone != null && a.Phone.Contains(searchString))
                );
            }

            // Lọc theo loại
            switch (filterType)
            {
                case "customer":
                    // Khách hàng: RoleId = 2
                    accounts = accounts.Where(a => a.RoleId == 2);
                    break;
                case "carowner":
                    // Chủ xe: RoleId = 3
                    accounts = accounts.Where(a => a.RoleId == 3);
                    break;
                case "banned":
                    // Account bị ban: IsActive = false
                    accounts = accounts.Where(a => a.IsActive == false);
                    break;
            }

            var accountList = accounts.OrderBy(a => a.AccountId).ToList();

            ViewBag.SearchString = searchString;
            ViewBag.FilterType = filterType;

            return View(accountList);
        }

        // GET: Admin/UserManagement/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var account = await _context.Accounts
                .Include(a => a.Role)
                .FirstOrDefaultAsync(m => m.AccountId == id);

            if (account == null)
            {
                return NotFound();
            }

            // Không cho phép xem chi tiết Admin
            if (account.RoleId == 1)
            {
                TempData["ErrorMessage"] = "Không thể xem chi tiết tài khoản Admin.";
                return RedirectToAction(nameof(Index));
            }

            return View(account);
        }

        // GET: Admin/UserManagement/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var account = await _context.Accounts.FindAsync(id);
            if (account == null)
            {
                return NotFound();
            }

            // Không cho phép sửa Admin
            if (account.RoleId == 1)
            {
                TempData["ErrorMessage"] = "Không thể sửa tài khoản Admin.";
                return RedirectToAction(nameof(Index));
            }

            ViewBag.Roles = new SelectList(_context.Roles, "RoleId", "RoleName", account.RoleId);
            return View(account);
        }

        // POST: Admin/UserManagement/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("AccountId,Username,Password,FullName,Phone,Email,RoleId,LastLogin,IsActive")] Account account)
        {
            if (id != account.AccountId)
            {
                return NotFound();
            }

            // Không cho phép sửa Admin
            if (account.RoleId == 1)
            {
                TempData["ErrorMessage"] = "Không thể sửa tài khoản Admin.";
                return RedirectToAction(nameof(Index));
            }

            if (ModelState.IsValid)
            {
                try
                {
                    // Nếu password không rỗng thì mã hóa, nếu không thì giữ nguyên password cũ
                    var existingAccount = await _context.Accounts.AsNoTracking().FirstOrDefaultAsync(a => a.AccountId == id);
                    if (existingAccount != null)
                    {
                        // Nếu password mới được nhập và khác với password cũ thì mã hóa
                        if (!string.IsNullOrEmpty(account.Password) && account.Password != existingAccount.Password)
                        {
                            account.Password = Function.MD5Password(account.Password);
                        }
                        else
                        {
                            // Giữ nguyên password cũ
                            account.Password = existingAccount.Password;
                        }
                    }

                    _context.Update(account);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!AccountExists(account.AccountId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }

            ViewBag.Roles = new SelectList(_context.Roles, "RoleId", "RoleName", account.RoleId);
            return View(account);
        }

        // GET: Admin/UserManagement/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var account = await _context.Accounts
                .Include(a => a.Role)
                .FirstOrDefaultAsync(m => m.AccountId == id);

            if (account == null)
            {
                return NotFound();
            }

            // Không cho phép xóa Admin
            if (account.RoleId == 1)
            {
                TempData["ErrorMessage"] = "Không thể xóa tài khoản Admin.";
                return RedirectToAction(nameof(Index));
            }

            return View(account);
        }

        // POST: Admin/UserManagement/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var account = await _context.Accounts.FindAsync(id);
            if (account != null)
            {
                // Không cho phép xóa Admin
                if (account.RoleId == 1)
                {
                    TempData["ErrorMessage"] = "Không thể xóa tài khoản Admin.";
                    return RedirectToAction(nameof(Index));
                }

                _context.Accounts.Remove(account);
                await _context.SaveChangesAsync();
            }

            return RedirectToAction(nameof(Index));
        }

        // POST: Admin/UserManagement/ToggleLock/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> ToggleLock(int id)
        {
            var account = await _context.Accounts.FindAsync(id);
            if (account == null)
            {
                return NotFound();
            }

            // Không cho phép khóa/mở khóa Admin
            if (account.RoleId == 1)
            {
                TempData["ErrorMessage"] = "Không thể khóa/mở khóa tài khoản Admin.";
                return RedirectToAction(nameof(Index));
            }

            // Đảo ngược trạng thái IsActive
            account.IsActive = !(account.IsActive ?? false);
            
            _context.Update(account);
            await _context.SaveChangesAsync();

            TempData["SuccessMessage"] = account.IsActive == true 
                ? "Đã mở khóa tài khoản thành công." 
                : "Đã khóa tài khoản thành công.";

            return RedirectToAction(nameof(Index));
        }

        private bool AccountExists(int id)
        {
            return _context.Accounts.Any(e => e.AccountId == id);
        }
    }
}

