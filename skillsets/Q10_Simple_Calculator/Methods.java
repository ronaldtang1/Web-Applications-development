import java.util.Scanner;

class Methods {

    //create methods without returning any value
    public static void getRequirements()
    {
        //display operational messages
        System.out.println("Program uses methods to:\nadd, subtract, multiply, divide and power floating point numbers, rounded to two decimal places.");
        System.out.println("Note: Program checks for non-value numeric values, and division by zero.");
        System.out.println();   //printing blank line
    }
    
    public static void calculateNumbers()
    {
        //initalize variables and create scanner object
        double num1 = 0.0, num2 = 0.0;
        char operation = ' ';
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter mathematical operation (a=addition, s=subtraction, m=multiplication, d=division, e=exponentiation):");

        operation = sc.next().toLowerCase().charAt(0);

        while (operation != 'a' && operation != 's' && operation != 'm' && operation != 'd' && operation != 'e')
        {
            System.out.println("\nIncorrect operation. Please enter correct operation: ");
            operation = sc.next().toLowerCase().charAt(0);

        }

        System.out.println("Please enter first number: ");
        while (!sc.hasNextDouble())
        {
            System.out.println("Not valid number!\n");
            sc.next();
            System.out.print("Please try again. Enter first number: ");
        }
        num1 = sc.nextDouble();

        System.out.println("Please enter second number: ");
        while (!sc.hasNextDouble())
        {
            System.out.println("Not valid number!\n");
            sc.next();
            System.out.print("Please try again. Enter second number: ");
        }
        num2 = sc.nextDouble();

        //test operation
        if (operation == 'a')
        {
            Addition(num1, num2);
        }
        else if(operation == 's')
        {
            Subtraction(num1, num2);
        }
        else if (operation == 'm')
        {
            Multiplication(num1, num2);
        }
        else if (operation == 'd')
        {
            if (num2 == 0)
            {
                System.out.println("Cannot divide by zero!");
            }
            else 
            {
                Division(num1, num2);
            }
        }
        else if (operation == 'e')
        {
            Exponentiation(num1, num2);
        }

        System.out.println();   //printing blank line

        sc.close(); //closing scanner

    }

    //create mathematical methods
    public static void Addition(double n1, double n2)
    {
        System.out.print(n1 + " + " + n2 + " = ");
        System.out.printf("%.2f", (n1 + n2));
    }

    public static void Subtraction(double n1, double n2)
    {
        System.out.print(n1 + " - " + n2 + " = ");
        System.out.printf("%.2f", (n1 - n2));
    }

    public static void Multiplication(double n1, double n2)
    {
        System.out.print(n1 + " * " + n2 + " = ");
        System.out.printf("%.2f", (n1 * n2));
    }

    public static void Division(double n1, double n2)
    {
        System.out.print(n1 + " / " + n2 + " = ");
        System.out.printf("%.2f", (n1 / n2));
    }

    public static void Exponentiation(double n1, double n2)
    {
        System.out.print(n1 + " to the power of  " + n2 + " = ");
        System.out.printf("%.2f", (Math.pow(n1,n2)));
    }
}
