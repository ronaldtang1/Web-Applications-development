import java.util.Scanner;
import java.io.File;

public class Methods 
{
    public static void getRequirements()
    {
        //display operational messages
        System.out.println("Developer: Ronald Tang");
        System.out.println("Program lists files and subdirectories of user-specified directory");

        //printing blank line
        System.out.println();
    }    

    public static void directoryInfo()
    {
        //intialize variables 
        String myDir = "";
        Scanner sc = new Scanner(System.in);

        System.out.print("Please enter directory path: ");
        myDir = sc.nextLine();  //read user input

        File directoryPath = new File(myDir);

        try{
            //display file and directory names within specified directory 
            File[] files = directoryPath.listFiles();

            //display file info
            for (int i = 0; i < files.length; i++)
            {
                System.out.println("Name: " + files[i].getName());
                System.out.println("Path: " + files[i].getAbsolutePath());
                System.out.println("Size (Bytes): " + files[i].length());
                System.out.println("Size (KB): " + files[i].length()/(1024));
                System.out.println("Size (MB): " + files[i].length()/(1024*1024));
                System.out.println();
            }
        }
        catch (Exception e)
        {
            System.err.println(e.getMessage());
        }

        sc.close();     //close scanner
    }
}
