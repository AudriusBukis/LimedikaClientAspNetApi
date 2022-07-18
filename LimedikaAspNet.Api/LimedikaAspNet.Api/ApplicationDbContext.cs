using LimedikaAspNet.Api.Models;
using Microsoft.EntityFrameworkCore;

namespace LimedikaWebApi
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Client>? Clients { get; set; }
        public DbSet<Log>? Log { get; set; }
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }

    }
}
