class AgeException extends Exception {

    public AgeException(String message) {
        super(message);
    }
}

public class CustomExceptionExample {

    public static void validateAge(int age) throws AgeException {
        if (age < 18) {
            throw new AgeException("Age must be 18 or above.");
        } else {
            System.out.println("Age is valid.");
        }
    }

    public static void main(String[] args) {
        try {
            validateAge(15);
        } catch (AgeException e) {
            System.err.println("Validation Error: " + e.getMessage());
        }
    }
}
