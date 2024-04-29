public class Calculator {
    
    public int add(int a, int b) {
        return a + b;
    }
    
  
    public int add(int a, int b, int c) {
        return a + b + c;
    }
    
   
    public double add(double a, double b) {
        return a + b;
    }
    
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        
        
        int sum1 = calc.add(5, 10);
        System.out.println("Sum of 5 and 10 is: " + sum1);
        
        
        int sum2 = calc.add(5, 10, 15);
        System.out.println("Sum of 5, 10, and 15 is: " + sum2);
        
        
        double sum3 = calc.add(3.5, 4.5);
        System.out.println("Sum of 3.5 and 4.5 is: " + sum3);
    }
}