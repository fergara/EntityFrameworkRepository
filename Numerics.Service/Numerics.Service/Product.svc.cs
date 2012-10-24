using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Numerics;

namespace Numerics.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Product" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Product.svc or Product.svc.cs at the Solution Explorer and start debugging.
    public class Product : IProduct
    {
        public void Get(int id)
        {
            Repository.NursRepository<Entity.Counterparty> repository = null;

            try
            {
                repository = new Repository.NursRepository<Entity.Counterparty>();

                repository.Save(new Entity.Counterparty() { ID = 0 }); //Add entity
                repository.Save(new Entity.Counterparty() { ID = 2 }); //Update entity

                int r = repository.Commit();
            }

            finally
            {
                if (repository != null)
                {
                    repository.Dispose();
                }
            }
        }
    }
}
