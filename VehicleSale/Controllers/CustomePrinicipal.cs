using System.Security.Principal;

namespace VehicleSale.Controllers
{
    public class CustomPrincipal
    {
        public IIdentity Identity { get; private set; }
        public bool IsInRoll(string Roll)
        {
            if (Roll.Contains(Rolls))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public CustomPrincipal(string Username)
        {
            this.Identity = new GenericIdentity(Username);
           // this.Rolls = 
        }

        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Rolls { get; set; }
    }

    public class CustomPrincipalSerializeModel
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Rolls { get; set; }

        public string UserName { get; set; }
    }
}