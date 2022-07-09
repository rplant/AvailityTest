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


            Console.WriteLine("\n\nSort By Company\n");
            result.OrderBy(s => s.insurance).ThenByDescending(v => v.version).ToList().ForEach(s =>
            {
                Console.WriteLine($"{s.insurance} {s.firstName} {s.lastName} {s.version}");
            });

            Console.WriteLine("\n\nSort By Last Name, First\n");
            result.OrderBy(s => s.lastName).ThenBy(s => s.firstName).ToList().ForEach(s =>
            {
                Console.WriteLine($"{s.lastName} {s.firstName} {s.insurance} {s.version}");
            });

        }
    }
}
