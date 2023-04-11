import java.util.Scanner;

class VehicleDemo 
{
    public static void main(String[] args)
    {
        //intialize variables
        String mk = "";
        String md = "";
        int yr = 0;
        Scanner sc = new Scanner(System.in);

        System.out.print("\n/////Below are default constructor values://///");
        Vehicle v1 = new Vehicle();     //default object
        System.out.println("\nMake = " + v1.getMake());
        System.out.println("Model = " + v1.getModel());
        System.out.println("Year = " + v1.getYear());

        System.out.print("\n/////Below are user-entered values://///");

        //get user input
        System.out.print("\nMake: ");
        mk = sc.nextLine();

        System.out.print("Model: ");
        md = sc.nextLine();

        System.out.print("Year: ");
        yr = sc.nextInt();

        Vehicle v2 = new Vehicle(mk, md, yr);
        System.out.println("\nMake = " + v2.getMake());
        System.out.println("Model = " + v2.getModel());
        System.out.println("Year = " + v2.getYear());

        System.out.print("\n/////Below are setter methods to pass literal values, then print() method to display values://///\n");
        v2.setMake("Chevrolet");
        v2.setModel("Corvette 206");
        v2.setYear(2023);
        v2.print();

        sc.close();

    }    
}
