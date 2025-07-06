using DAL.Concrete;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class ProfileService
    {
        private readonly ProfileDal profileDal;

        public ProfileService()
        {
            profileDal = new ProfileDal();
        }

        public async Task<Profile> GetProfileAsync()
        {
            return await profileDal.GetProfileAsync();
        }

        public async Task UpdateProfileAsync(Profile profile)
        {
            profileDal.UpdateProfileAsync(profile);
        }
    }
}
