namespace LuckyNumber
{
    // A Lucky Number is a number which is not a prime number and the sum of the digits
    // of the number when squared is equal to the sum of the digits of the square of the number.
    public class Program
    {
        // Main Method 
        public static void Main(string[] args)
        {
            int cnt = 0;
            Console.WriteLine("Enter the first Number: ");
            int Fnum = int.Parse(Console.ReadLine()!);
            Console.WriteLine("Enter the Second Number: ");
            int Snum = int.Parse(Console.ReadLine()!);

            if (Fnum > Snum)
            {
                Console.WriteLine("Invalid range");
                return;
            }

            for (int i = Fnum; i <= Snum; i++)
            {
                if (!isPrime(i))
                {
                    int s = SumofDigit(i);
                    if (SumofDigit(i * i) == s * s)
                    {
                        Console.WriteLine($"{i} is a Lucky Number.");
                        cnt++;
                    }
                }
            }
            Console.WriteLine($"Total Lucky Number {cnt}");
        }

        // Function to check if a number is prime
        public static bool isPrime(int n)
        {
            if (n <= 1) return false;

            for (int i = 2; i * i <= n; i++)
            {
                if (n % i == 0)
                    return false;
            }
            return true;
        }

        // Function to calculate sum of digits of a number
        public static int SumofDigit(int n)
        {
            int sum = 0;
            while (n > 0)
            {
                sum += n % 10;
                n /= 10;
            }
            return sum;
        }
    }
}
