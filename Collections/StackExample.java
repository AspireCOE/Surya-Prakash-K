import java.util.Stack;

public class StackExample {

    public static void main(String[] args) {
        Stack<String> stack = new Stack<>();

        // Pushing elements to the stack
        stack.push("apple");
        stack.push("banana");
        stack.push("orange");

        // Printing elements of the stack
        System.out.println("Stack Elements:");
        while (!stack.empty()) {
            System.out.println(stack.pop());
        }

        // Check if the stack is empty
        if (stack.isEmpty()) {
            System.out.println("Stack is empty now.");
        }
    }
}
