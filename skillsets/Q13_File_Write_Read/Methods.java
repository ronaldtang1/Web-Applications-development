import java.util.Scanner;
import java.io.*;

public class Methods
{
    public static void getRequirements()
    {
        //display operational messages
        System.out.println("Author: Ronald Tang");
        System.out.println("Program Requirements:");
        System.out.println("Program captures user input, writes to and reads from same file, and counts number of words in file." );
        System.out.println("Hint: use hasNext() method to read number of words (tokens).");

        System.out.println();   //printing blank line
    }

    public static void getWriteRead()
    {
        //initalize variables
        String myFile = "filecountwords.txt";

        try {
            //create file object
            File file = new File (myFile);

            //create PrintWriter object
            PrintWriter writer = new PrintWriter(file);
            
            //create scanner object for user input 
            Scanner input = new Scanner(System.in);

            //create String object to store user input
            String str = "";

            System.out.print("Please enter line of text: ");
            str = input.nextLine();

            //write to file using PrintWriter write() method
            writer.write(str);

            System.out.println("Saved to file \"" + myFile + "\"" );

            //close input Scanner object
            input.close();

            writer.close();

            Scanner read = new Scanner(new FileInputStream(file));
            int count = 0;
            while (read.hasNext())
            {
                read.next();
                count++;
            }
            System.out.println("Number of words: " + count);

            //close scanner object
            read.close();
        }

        catch(IOException ex)
        {
            System.out.println("Error writing to or reading from file " + myFile + "");
        }
    }
}