using LimedikaAspNet.Api.DTOs;
using LimedikaAspNet.Api.Models;

namespace LimedikaAspNet.Api.Services.Repositories
{
    public interface IClientRepository
    {
        bool SaveClient(ClientDto clientDto);
        List<Client>? GetAllClients();
        bool UpdatePostCode(string postCode, Guid clientId);

    }
}
