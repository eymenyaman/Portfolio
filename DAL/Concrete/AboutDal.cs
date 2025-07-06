using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class AboutDal
    {
        private readonly DataContext _context;

        public AboutDal()
        {
            _context = new DataContext();
        }

        public About GetAbout()
        {
            return _context.Abouts.FirstOrDefault();
        }

        public async Task UpdateAboutAsync(About about)
        {
            await _context.SaveChangesAsync();
        }
    }
}
