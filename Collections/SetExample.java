import java.util.HashSet;
import java.util.Set;

public class SetExample {

    public static void main(String[] args) {
        Set<String> set = new HashSet<>();

        // Adding elements to the set
        set.add("apple");
        set.add("banana");
        set.add("orange");

        // Printing elements of the set
        System.out.println("Set Elements:");
        for (String element : set) {
            System.out.println(element);
        }

        // Check if an element exists in the set
        String searchElement = "banana";
        if (set.contains(searchElement)) {
            System.out.println(searchElement + " is present in the set.");
        } else {
            System.out.println(searchElement + " is not present in the set.");
        }
    }
}
