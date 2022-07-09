using System.Linq;

namespace Validators
{
	public class LispValidators
	{
		public LispValidators() { }

		public bool ValidatorString(string input)
		{
			int count = 0;
			var tokens = input.Replace("(", " ( ").Replace(")", " ) ").Split().Where(x => x != "").ToList();
			tokens.ForEach(s =>
			{
				if (s.Contains('(')) count++;
				if (s.Contains(')')) count--;
			});

			return count == 0 ? true : false;
		}


	}
}
