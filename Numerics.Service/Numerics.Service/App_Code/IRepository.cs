using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Numerics.Repository
{
    interface IRepository<T> where T : class
    {
        void Save(T entity);
        void Delete(T entity);
        int Commit();
        T Find(params object[] key);
        void Dispose();
    }
}