using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class E01UlazIzlaz
    {
        public static void Izvedi()
        {
            //Console.WriteLine("Dobar dan");
            //Console.WriteLine(3.14);

            // Console.WriteLine("Dodajte broj tako da zbroj 1 + broj = 3");
            // int broj = int.Parse(Console.ReadLine());

            // Console.WriteLine("Broj koji ste unijeli je " + broj);

            //Console.WriteLine("Unesite dužinu sobe u centimetrima");
           // int dužina = int.Parse(Console.ReadLine());

            //float DužinaUMetrima = (float)dužina / 100;

            //Console.WriteLine("Soba je dugačka " + DužinaUMetrima + "metara");

            Console.WriteLine("Unesi visinu prostorije u centimetrima");
            int visina = int.Parse(Console.ReadLine());
            float VisinaUKilometrima = (float)visina / 10000;

            Console.WriteLine("Unesite dužinu sobe u centimetrima");
            int dužina = int.Parse(Console.ReadLine());
            float DužinaUKilometrima = (float)dužina / 10000;

            float PovršinaSobe = VisinaUKilometrima * DužinaUKilometrima;

            Console.WriteLine("Površina sobe je " + PovršinaSobe);














        }

    }
}
