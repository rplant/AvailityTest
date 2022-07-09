using csv_import;
using System.Collections.Generic;
using System.IO;

namespace csv_import
{
    public class csvSplitter
    {
       

        public csvSplitter() { }


        public List<baseLine> readFile(string fileName)
        {

            List<baseLine> enrolleeList = new List<baseLine>();
            List<string> daFile = new List<string>();

            using (var reader = new StreamReader(fileName))
            {
                string[] tempLine;
                while (!reader.EndOfStream)
                {
                    tempLine = reader.ReadLine().Split(',');
                    enrolleeList.Add(new baseLine
                    {
                        userName = tempLine[0],
                        fullName = tempLine[1],
                        version = int.Parse(tempLine[2]),
                        insurance = tempLine[3]
                    });
                }
                enrolleeList.ForEach(s =>
                {
                    tempLine = s.fullName.Split(' ');
                    s.firstName = tempLine[0];
                    s.lastName = tempLine[1];
                });

            }
            return enrolleeList;

        }
    }
}
