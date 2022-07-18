using LimedikaAspNet.Api.DTOs;

namespace LimedikaAspNet.Api.Services
{
    public interface IHttpClientExtension
    {
        public Task<ResposePostItDto> GetInfoFromPostItByAddressAsync(string address);
    }
}
