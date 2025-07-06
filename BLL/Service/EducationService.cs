using DAL.Concrete;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class EducationService
    {
        private readonly EducationDal educationDal;

        public EducationService()
        {
            educationDal = new EducationDal();
        }

        public List<Education> GetEducations()
        {
            return educationDal.GetEducations();
        }
        public async Task UpdateEducationAsync(List<Education> educations)
        {
            await educationDal.UpdateEducationAsync(educations);
        }
    }
}
