//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace Numerics.Entity
{
    public partial class ProductSubFamily
    {
        public ProductSubFamily()
        {
            this.Product = new HashSet<Product>();
        }
    
        public int ID { get; set; }
        public int ProductFamilyID { get; set; }
    
        internal virtual ProductFamily Family { get; set; }
        internal virtual ICollection<Product> Product { get; set; }
    }
    
}
