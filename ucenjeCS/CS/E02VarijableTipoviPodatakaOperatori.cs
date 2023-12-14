using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CS
{
    internal class E02VarijableTipoviPodatakaOperatori
    {
        public static void Izvedi ()
        {
        int Varijabla=3;

        Console.WriteLine(Varijabla);

            int i=1, j=0, k;
            Console.WriteLine("{0},{1}",i,j);

            bool Istina = i == 1;

            Console.WriteLine(Istina);

            double Broj = 4.89;
            decimal VeciBroj = 4.74M;

            Console.WriteLine(int.MaxValue);
            int mb = int.MaxValue;
            Console.WriteLine(mb+1);

            i = 3; j = 2; k = 1;

            Console.WriteLine(i+j);
            Console.WriteLine(i-j);
            Console.WriteLine(i*j);
            Console.WriteLine(i/j);
            Console.WriteLine((float)i/j);

            //za dvoznamenkasti broj ispisi prvu zanmenku

            int DB = 56;
               Console.WriteLine(DB/10);


            bool Uvjet = i > j;
            Uvjet = i >= j;
            Uvjet= i<=k;
            Uvjet = i == j; //provjera jednakosti
            Uvjet = i != j; //provjera nejednakosti

            //operator modulo-ostatak cijelobrojnog dijeljenja
            int Ostatak = 9 % 2;

            //za dvoznamenkasti broj ispisi vrijednost jedinice

            Console.WriteLine(52%10);

            i = 1;
            Console.WriteLine(i); //1
            i = i + 1; 
            Console.WriteLine(i); //2
            i += 1; //uvecan za 1
            Console.WriteLine(i); //3
            i++; //uvecavam za 1
            Console.WriteLine(i); //4

            //specificnosti inkrementa
            Console.WriteLine(i++); //4
            Console.WriteLine(i); //5
            Console.WriteLine(++i); //6
            Console.WriteLine(i); //6

            //dekrement (--)

            int t = 1, l = 2;
            t = ++t - l; // t
            l -= t - l; //
            Console.WriteLine(++t - --l);

           
        }
    }
}
