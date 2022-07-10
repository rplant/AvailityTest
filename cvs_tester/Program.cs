using System;
using System.Linq;
using csv_import;

namespace csv_tester
{
    internal class Program
    {
        static void Main(string[] args)
        {

            csvSplitter csv = new csvSplitter();

            var result = csv.readFile(@"c:\\test.txt");

            var groupbyInsurance = from r in result
                                   group r by r.insurance into InsGroup
                                   orderby InsGroup.Key
                                   select InsGroup;

            foreach(var n in groupbyInsurance)
            {
                Console.WriteLine($"Key: {n.Key}");
                var sorted = n.OrderBy(s => s.lastName).ThenBy(s => s.firstName).ToList();
                foreach (var i in sorted)
                {
                  Console.WriteLine($"{i.lastName} {i.firstName}");
                }
            }






        }
    }
}
