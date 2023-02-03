import java.util.Scanner;
public class Methods 
{
    public static void getRequirements()
    {
        System.out.println("Author: Ronald Tang");
        System.out.println("Program Requirements:");
        System.out.println("1. Program swaps two-user entered floating-point values");
        System.out.println("2. Create at least two user-defined methods: getRequirements()");
        System.out.println("3. Must perform data validation: numbers must be floats");
        System.out.println("4. Print numbers before/after swapping.\n");
    }

    public static void numberSwap()
    {
        Scanner sc = new Scanner(System.in);
        float num1 = 0.0f;
        float num2 = 0.0f;
        float temp = 0.0f;

        //prompt user
        System.out.print("Enter num1: ");
        while(!sc.hasNextFloat())
        {
            System.out.print("Invalid input!\n");
            sc.next();
            System.out.print("Please try again. Enter num1: ");
        }
        num1 = sc.nextFloat(); //valid input

        System.out.print("\nEnter num2: ");
        while(!sc.hasNextFloat())
        {
            System.out.println("Invalid input!\n");
            sc.next();
            System.out.print("Please try again. Enter num2: ");
        }
        num2 = sc.nextFloat(); //valid input

        System.out.println("\nBefore swap");
        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);

        //value of num1 assigned to temp
        temp = num1;

        //value of num2 assigned to num1
        num1 = num2;

        //value of temp assigned to num2
        num2 = temp;

        System.out.println("\nAfter swap");
        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);

        sc.close();
    }
}
