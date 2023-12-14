using Microsoft.AspNetCore.Mvc;
using System.Reflection.Metadata.Ecma335;

namespace webApi.Controllers
{
    [ApiController]
    [Route("E02")]
    public class E02VarijableTipoviPodatakaOperatori : ControllerBase
    {
        [HttpGet]
        [Route("zad1")]

        public int zad1()
        {
            return int.MinValue;
            //vratite najmnaji broj
        }

        [HttpGet]
        [Route("zad2")]

        public float zad2(int i, int j)
        {
            return i/j;

        }



    //ruta vraca kvocijent dvaju primljenih brojeva
    [HttpGet]
    [Route("zad3")]

    public float zad3(int i, int j)
        {
            //ruta vraca zbroj umnoska i kvocijenta primljenih brojeva

            var umnozak = i * j; ;
            var kvocijent = (float)i / j;
            return umnozak + kvocijent;

        }

        [HttpGet]
        [Route("zad4")]

        public string zad4(string s, string s1)
        {
            string znakova = s + s1;
            return znakova;

        }

        [HttpGet]
        [Route("zad5")]
        public bool Istisu(int a, int b)
        {
            Console.WriteLine("a={0}", a);
            return a == b;


        //ruta vraca true ako je a jednkao b, inace vraca false
        }

}
}
