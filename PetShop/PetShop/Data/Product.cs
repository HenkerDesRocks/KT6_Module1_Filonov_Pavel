//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PetShop.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public int id { get; set; }
        public int idUnit { get; set; }
        public Nullable<int> orderId { get; set; }
        public int idProduct { get; set; }
        public int idManufacture { get; set; }
        public int idSaler { get; set; }
        public int idCategory { get; set; }
        public string article { get; set; }
        public int cost { get; set; }
        public int maxSale { get; set; }
        public int saleNow { get; set; }
        public int quentityInStock { get; set; }
        public string description { get; set; }
        public string imageName { get; set; }
        public string image { get; set; }
    
        public virtual category category { get; set; }
        public virtual manufacture manufacture { get; set; }
        public virtual Order Order { get; set; }
        public virtual productName productName { get; set; }
        public virtual saler saler { get; set; }
        public virtual unit unit { get; set; }
    }
}
