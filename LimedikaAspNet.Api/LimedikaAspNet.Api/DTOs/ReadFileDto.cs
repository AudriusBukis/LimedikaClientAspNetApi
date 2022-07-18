using LimedikaAspNet.Api.Attributes;
using System.ComponentModel.DataAnnotations;

namespace PersonRegistrationASPNet.Api.Models
{
    public class ReadFileDto
    {
        [AllowedExtensions(new string[] { ".json" })]
        [Required]
        public IFormFile? ClientsFile { get; set; }
    }
}
