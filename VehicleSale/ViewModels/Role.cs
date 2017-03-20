﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VehicleSale.ViewModels
{
    public class RoleVM
    {
        public int UserId { get; set; }
        public string RoleName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public bool? IsActive { get; set; }
    }
}