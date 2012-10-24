using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Numerics.Repository
{
    public class NursRepository<T> : IRepository<T> where T : class
    {
        private readonly DbContext dbContext = null;
        private DbSet<T> dbSet = null;

        /// <summary>
        /// Constructor that instantiates the Numerics context by default
        /// </summary>
        internal NursRepository()
        {
            this.dbContext = new Numerics.Entity.NumericsContext();
            dbSet = dbContext.Set<T>();
        }

        internal NursRepository(System.Data.Entity.DbContext context)
        {
            this.dbContext = context;
        }

        public T Find(params object[] key)
        {
            return dbSet.Find(key);
        }

        public void Save(T entity)
        {
            System.Data.Entity.Infrastructure.DbEntityEntry<T> entry = dbContext.Entry<T>(entity);

            System.Data.Entity.Infrastructure.DbPropertyEntry property = entry.Property("ID"); //we choosed that the PK is always the ID property

            T entityToSave = dbSet.Find(property.CurrentValue) ?? dbSet.Add(entity);

            if (entry.State == System.Data.EntityState.Detached)
            {
                dbSet.Attach(entityToSave);
            }
        }

        public void Delete(T entity)
        {
            //with DbContext API you do not have to grab the entity, attach and mark for deletion
            //With one condicion: the ID must be filled
            dbSet.Remove(entity);
        }

        public int Commit()
        {
            return dbContext.SaveChanges();
        }

        public void Dispose()
        {
            if (this.dbContext != null)
            {
                dbContext.Dispose();
            }
        }
    }
}