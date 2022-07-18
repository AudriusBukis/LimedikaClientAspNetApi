﻿namespace LimedikaAspNet.Api.DTOs
{
    public class ResponseDto
    {
        public bool IsSuccess { get; set; }
        public string? Message { get; set; }

        public ResponseDto(bool isSuccess, string message)
        {
            IsSuccess = isSuccess;
            Message = message;
        }
    }
}
