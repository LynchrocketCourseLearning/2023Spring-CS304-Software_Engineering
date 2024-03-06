import java.util.Scanner;

/**
 * @author CS304
 * @version jdk1.8.0
 */
public class example_01 {
    /**
     * This is the main method
     * which is very important for
     * execution for a java program.
     * @param args system configuration
     */
    public static void main(String[] args)
    {
        int x, y;
        Scanner sc = new Scanner(System.in);
        x = sc.nextInt();
        y = sc.nextInt();
        int sum = add(x,y);
        System.out.println("Sum is: " + sum);
    }

    /**
     * This is a program for adding two numbers in java.
     * @param n first element
     * @param m second element
     * @return m+n
     */
    public static int add(int n, int m) {
        int sum = 0;
        for (int i = n; i <= m; i++) {
            sum = sum + i;
        }
        return sum;
    }
}