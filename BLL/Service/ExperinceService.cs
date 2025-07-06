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
    public class ExperinceService
    {
        private readonly ExperinceDal experinceDal;
        public ExperinceService()
        {
            experinceDal = new ExperinceDal();
        }

        public List<Experience> GetExperinces()
        {
            return experinceDal.GetExperinces();
        }
        public async Task UpdateExperinceAsync(List<Experience> experiences)
        {
            await experinceDal.UpdateExperinceAsync(experiences);
        }
    }
}
