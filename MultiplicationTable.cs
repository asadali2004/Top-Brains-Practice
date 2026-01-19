namespace TopBrainsPractice
{
    // Given two integers N and Upto, return an array of size Upto
    // containing the multiplication table of N from 1 to Upto.
    public class Program
    {
        // MAIN METHOD
        public static void Main(string[] args)
        {
            Console.WriteLine("Enter N: ");
            int n = int.Parse(Console.ReadLine()!);
            Console.WriteLine("Enter Upto: ");
            int upto = int.Parse(Console.ReadLine()!);

            int[] result = MultiplicationTable(n, upto);
            foreach (int value in result)
            {
                Console.Write(value + " ");
            }
        }

        // METHOD TO RETURN MULTIPLICATION TABLE
        public static int[] MultiplicationTable(int n, int upto)
        {
            int[] res = new int[upto];

            for (int i = 1; i <= upto; i++)
            {
                res[i - 1] = n * i;
            }
            return res;
        }
    }
}