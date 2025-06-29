using DAL.Context;
using Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concrete
{
    public class ServiceDal
    {
        private readonly DataContext context;

        public ServiceDal()
        {
            context = new DataContext();
        }

        public List<Service> GetServices(Expression<Func<Service,bool>> filter=null) //GetServices(): Bütün servisler gelir.
        {                                                                              //GetServices(i=> i.Id>5): 5'den büyük Id değerine sahip servisler gelir
            //metoda parametre gelme/gelmeme ihtimali var.

            //if (filter == null)
            //{
            //    return context.Services.ToList();
            //}

            //else
            //{
            //    return context.Services.Where(filter).ToList();

            //}


            var services = context.Services.AsQueryable();

            if (filter != null)
            {
                services.Where(filter);
            }

            return services.ToList();
        }

        public ServiceDetails GetById(int id)
        {
            return context.ServiceDetails.Find(id);
        }

    }
}
