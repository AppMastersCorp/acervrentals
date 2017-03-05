using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class LoginSocial
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public int UserId { get; set; }
        public string Phone { get; set; }
        public Nullable<System.DateTime> DOB { get; set; }
        public string Password { get; set; }
        public string UserName { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<int> RoleID { get; set; }
        public string RoleName { get; set; }
        public string ForgetPassword { get; set; }
        public string ProviderKey { get; set; }
    }
}