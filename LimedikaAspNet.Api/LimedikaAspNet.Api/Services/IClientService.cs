using LimedikaAspNet.Api.DTOs;
using LimedikaAspNet.Api.Models;
using PersonRegistrationASPNet.Api.Models;

namespace LimedikaAspNet.Api.Services
{
    public interface IClientService
    {
        ResponseDto SaveClient(ReadFileDto? readFileDto);
        List<Client>? GetAllClients();
        ResponseDto UpdatePostCode();
    }
}
