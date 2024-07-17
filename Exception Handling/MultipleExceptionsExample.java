public class MultipleExceptionsExample {

    public static void main(String[] args) {
        try {
            int[] array = new int[5];
            array[5] = 10 / 0; 
        } catch (ArrayIndexOutOfBoundsException e) {
            System.err.println("Array index out of bounds: " + e.getMessage());
        } catch (ArithmeticException e) {
            System.err.println("Arithmetic error: " + e.getMessage());
        } finally {
            System.out.println("Finally block executed");
        }
    }
}
