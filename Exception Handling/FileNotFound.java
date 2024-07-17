import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class FileNotFound {

    public static void main(String[] args) {
        File file = new File("test.txt");

        try {
            FileReader reader = new FileReader(file);
            int data = reader.read(); 
            while (data != -1) {
                System.out.print((char) data);
                data = reader.read();
            }
            reader.close();
        } catch (IOException e) {
            System.err.println("Error reading file: " + e.getMessage());
        }
    }
}
