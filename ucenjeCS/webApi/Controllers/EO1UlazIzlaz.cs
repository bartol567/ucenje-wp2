using Microsoft.AspNetCore.Mvc;

namespace webApi.Controllers
{
    [ApiController]
    [Route("E01")]
    public class EO1UlazIzlaz : ControllerBase
    {
        [HttpGet]
        [Route("HelloWorld")]

        public string HelloWorld(int godine, string ime);




   
}