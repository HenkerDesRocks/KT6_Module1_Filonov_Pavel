﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PetShopEntities : DbContext
    {
        public PetShopEntities()
            : base("name=PetShopEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<category> category { get; set; }
        public virtual DbSet<city> city { get; set; }
        public virtual DbSet<manufacture> manufacture { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<pickUpPoint> pickUpPoint { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<productName> productName { get; set; }
        public virtual DbSet<roleId> roleId { get; set; }
        public virtual DbSet<saler> saler { get; set; }
        public virtual DbSet<statusId> statusId { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<unit> unit { get; set; }
        public virtual DbSet<user> user { get; set; }
    }
}
