using DAL.Context;
using Entity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class ProfileDal
    {
        private readonly DataContext context;

        public ProfileDal()
        {
            context = new DataContext();
        }

        public async Task<Profile> GetProfileAsync()
        {
            return await context.Profiles.Include(i=> i.SocialMedias).FirstOrDefaultAsync();
        }
    }
}
