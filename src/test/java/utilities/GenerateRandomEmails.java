package utilities;

public class GenerateRandomEmails {

    // Create a method that is going to generate and return random emails.
    // dev12@tekschool.com --> Replace the 4xs with random numbers

    public static String generateRandomEmail() {
       int randomNumber = (int) ( Math.random() * 100000 );
       return "dev" + randomNumber + "@tekschool.com";
    }

}
