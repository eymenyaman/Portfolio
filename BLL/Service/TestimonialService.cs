using DAL.Concrete;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class TestimonialService
    {
        private readonly TestimonialDal testimonialService;

        public TestimonialService()
        {
            testimonialService = new TestimonialDal();
        }
        public List<Testimonial> GetTestimonial(Expression<Func<Testimonial, bool>> filter = null)
        {
            return testimonialService.GetTestimonial(filter);
        }
    }
}
