namespace Swaping
{
    // Given two integers, swap their values using ref and out keywords.
    public class Program
    {
        // MAIN METHOD
        public static void Main(string[] args)
        {
            Console.WriteLine("Enter the First Num: ");
            int Fnum = int.Parse(Console.ReadLine()!);
            Console.WriteLine("Enter the Second Num: ");
            int Snum = int.Parse(Console.ReadLine()!);

            Console.WriteLine($"Before Swaping: First Num = {Fnum} and Second Num = {Snum}");

            SwapRef(ref Fnum, ref Snum);
            Console.WriteLine($"After Swaping Using Ref: First Num = {Fnum} and Second Num = {Snum}");

            SwapOut(Fnum, Snum, out Fnum, out Snum);
            Console.WriteLine($"After Swaping Using Out: First Num = {Fnum} and Second Num = {Snum}");
        }

        // METHOD TO SWAP USING REF KEYWORD
        public static void SwapRef(ref int Num1, ref int Num2)
        {
            Num1 = Num1 + Num2;
            Num2 = Num1 - Num2;
            Num1 = Num1 - Num2;
        }
        
        // METHOD TO SWAP USING OUT KEYWORD
        public static void SwapOut(int Fnum, int Snum,out int Num1, out int Num2)
        {
            Num1 = Snum;
            Num2 = Fnum;
        }
    }
}