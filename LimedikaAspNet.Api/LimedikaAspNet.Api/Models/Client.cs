﻿using System.ComponentModel.DataAnnotations;

namespace LimedikaAspNet.Api.Models
{
    public class Client
    {
        [Key]
        [Required]
        public Guid Id { get; set; }
        [Required]
        [MaxLength(50)]
        public string? Name { get; set; }
        [Required]
        [MaxLength(50)]
        public string? Address { get; set; }
        [MaxLength(8)]
        public string? PostCode { get; set; }
        public Log? Log { get; set; }

        public override string? ToString()
        {
            return $"Clinent {Name}, address:{Address}, post code: {PostCode}";
        }
    }
}
