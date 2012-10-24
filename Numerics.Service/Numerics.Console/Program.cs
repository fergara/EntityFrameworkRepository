using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Numerics.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            using (Product.ProductClient p = new Product.ProductClient())
            {
                p.Get(11);
                
            }

            System.Console.ReadKey(true);
        }
    }
}
