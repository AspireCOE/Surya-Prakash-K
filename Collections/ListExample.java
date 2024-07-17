import java.util.ArrayList;
import java.util.List;

public class ListExample {

    public static void main(String[] args) {
        List<String> list = new ArrayList<>();

        // Adding elements to the list
        list.add("apple");
        list.add("banana");
        list.add("orange");

        // Printing elements of the list
        System.out.println("List Elements:");
        for (String element : list) {
            System.out.println(element);
        }

        // Accessing element by index
        System.out.println("First element: " + list.get(0));

        // Removing an element
        list.remove("banana");
        System.out.println("List after removing 'banana': " + list);
    }
}
