import java.util.Scanner;

public class 010numberGuesser.java{
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int diff=50, chance=50;
        String question;

        System.out.println("Think of a number from 1-100");
        for(int i=0;i<10;i++){
            System.out.printf("Is your number less than or equal to %d: ", chance);
            question=s.nextLine();
            System.out.println(diff);
            if(question.equals("Yes")){
                diff=diff/2-diff%2;
                chance=chance-diff;
            }
            else{
                diff=diff/2+diff%2;
                chance=chance+diff;
            }
            if(diff/2==0)break;
            if(chance<1 || chance>100){
                System.out.print("Your number is not in the range of 1-100");
                System.exit(0);
            }
        }
        System.out.printf("Your number is %d", chance);
    }
}
