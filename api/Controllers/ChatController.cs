using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

// Language: C#

namespace MyApp.Namespace
{
    [Route("api/[controller]")]
    [ApiController]
    public class ChatController : ControllerBase
    {
        /// <summary>
        /// Gets the API version.
        /// </summary>
        /// <returns>The default API version as a string, e.g., "1.0".</returns>
        [HttpGet("version")]
        public ActionResult<string> GetApiVersion()
        {
            return "1.0";
        }
    }
}