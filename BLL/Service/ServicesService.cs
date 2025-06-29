using DAL.Concrete;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Service
{
    public class ServicesService
    {
        private readonly ServiceDal dl;

        public ServicesService()
        {
            dl = new ServiceDal();
        }

        public List<Entity.Service> GetServices(Expression<Func<Entity.Service,bool>> filter = null)
        {
            return dl.GetServices();
        }

        public Entity.ServiceDetails GetById(int id)
        {
            return dl.GetById(id);
        }

    }
}
