using LimedikaAspNet.Api.DTOs;
using LimedikaAspNet.Api.Models;
using LimedikaAspNet.Api.Services;
using Microsoft.AspNetCore.Mvc;
using PersonRegistrationASPNet.Api.Models;

namespace LimedikaAspNet.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class LimedikaClientController : ControllerBase
    {
        private readonly IClientService _service;
        public LimedikaClientController(IClientService service)
        {
            _service = service;
        }

        [HttpGet("GetAllClients")]
        public ActionResult<List<Client>?> Get()
        {
            var clientList = _service.GetAllClients();
            if(clientList?.Count == 0)
                return BadRequest("No records in database");
            return clientList;
        }
        [HttpPost("LoadClientsFromFile")]
        public ActionResult<ResponseDto> LoadClientsFromFile([FromForm] ReadFileDto? readFileDto)
        {
            var response = _service.SaveClient(readFileDto);
            if (!response.IsSuccess)
                return BadRequest(response);
            return Ok(response);
        }
        [HttpPost("UpdatePostCodes")]
        public ActionResult<ResponseDto> UpdatePostCode()
        {
            var response = _service.UpdatePostCode();
            if (!response.IsSuccess)
                return BadRequest(response);
            return Ok(response);
        }
    }
}