using Library.BLL.Entities;
using Microsoft.EntityFrameworkCore;

namespace Library.DAL.EF
{
    public class ApplicationDbContext : DbContext
    {
        private readonly ConnectionStringDto _connectionString;

        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Loan> Loans { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Shelf> Shelves { get; set; }

        public ApplicationDbContext(ConnectionStringDto connectionString)
        {
            _connectionString = connectionString;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder
                .UseSqlServer(_connectionString.ConnectionString);
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            builder.Entity<Item>()
                .Property(i => i.Id)
                .ValueGeneratedOnAdd();
            builder.Entity<Item>()
                .HasMany(i => i.Loans)
                .WithOne(l => l.Item)
                .HasForeignKey(l => l.ItemId)
                    .OnDelete(DeleteBehavior.Cascade);

            builder.Entity<Loan>()
                .Property(l => l.Id)
                .ValueGeneratedOnAdd();
                

            builder.Entity<Shelf>()
                .Property(s => s.Id)
                .ValueGeneratedOnAdd();
            builder.Entity<Shelf>()
                .HasMany(s => s.Items)
                .WithOne(i => i.Shefl)
                .HasForeignKey(i => i.ShelfId)
                    .OnDelete(DeleteBehavior.Cascade);

            builder.Entity<User>()
                .HasMany(u => u.Items)
                .WithOne(i => i.Owner)
                .HasForeignKey(i => i.OwnerId)
                    .OnDelete(DeleteBehavior.Cascade);
            builder.Entity<User>()
                .HasMany(u => u.Shelves)
                .WithOne(s => s.Owner)
                .HasForeignKey(s => s.OwnerId)
                    .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
