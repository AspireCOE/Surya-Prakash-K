import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {

    public static void main(String[] args) {
        Queue<String> queue = new LinkedList<>();

        // Adding elements to the queue
        queue.add("apple");
        queue.add("banana");
        queue.add("orange");

        // Printing elements of the queue
        System.out.println("Queue Elements:");
        while (!queue.isEmpty()) {
            System.out.println(queue.remove());
        }

        // Check if the queue is empty
        if (queue.isEmpty()) {
            System.out.println("Queue is empty now.");
        }
    }
}
