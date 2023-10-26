package utility;
import java.util.*;


public class TaxCalculator {

    private static int income;
    private static int deduction;
    private static String status;

   
    public static void main(String[] args) {
        // TODO Auto-generated method stub
        // Using Scanner for Getting Input from User
        Scanner reader = new Scanner(System.in);
        System.out.print("Enter your yearly income without comma or $ sign\n>");
        income = reader.nextInt();

        reader.nextLine(); // skip the enter
        while (true) {
            System.out.print("Enter your filing status (Single, Jointly, Seprately)\n>");
            status = reader.nextLine();

            // Check the valid status
            status = status.toLowerCase();
            if (status.equals("single") || status.equals("jointly") || status.equals("seprately")) {
                break;
            } else {
                System.out.println("Invalid input. Please try again.");
                System.out.println("DEBUG: status = " + status);
            }
        }
        System.out.print("Enter standard deduction without comma or $ sign\n>");
        deduction = reader.nextInt();

        int TaxIncome = income - deduction;
        System.out.println("Your taxable income is $" + income + " - $" + deduction + " = $" + TaxIncome);
        double totalTax = 0.0;
        double higherRate = 0.0;
        // if this is single
        if (status.equals("single")) {
            if (TaxIncome <= 9325) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                higherRate = 10.00;
            } else if (TaxIncome <= 37950) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                higherRate = 15.00;
            } else if (TaxIncome <= 91900) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 91900, 25.00, TaxIncome);
                higherRate = 25.00;
            } else if (TaxIncome <= 191650) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 91900, 25.00, TaxIncome);
                totalTax += taxBaracket(91900, 191650, 28.00, TaxIncome);
                higherRate = 28.00;
            } else if (TaxIncome <= 416700) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 91900, 25.00, TaxIncome);
                totalTax += taxBaracket(91900, 191650, 28.00, TaxIncome);
                totalTax += taxBaracket(191650, 416700, 33.00, TaxIncome);
                higherRate = 33.00;
            } else if (TaxIncome <= 418400) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 91900, 25.00, TaxIncome);
                totalTax += taxBaracket(91900, 191650, 28.00, TaxIncome);
                totalTax += taxBaracket(191650, 416700, 33.00, TaxIncome);
                totalTax += taxBaracket(416700, 418400, 35.00, TaxIncome);
                higherRate = 35.00;
            } else {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 91900, 25.00, TaxIncome);
                totalTax += taxBaracket(91900, 191650, 28.00, TaxIncome);
                totalTax += taxBaracket(191650, 416700, 33.00, TaxIncome);
                totalTax += taxBaracket(416700, 418400, 35.00, TaxIncome);
                totalTax += taxBaracket(418400, Integer.MAX_VALUE, 39.60, TaxIncome);
                higherRate = 39.60;
            }
        } else if (status.equals("jointly")) {
            if (TaxIncome <= 18650) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                higherRate = 10.00;
            } else if (TaxIncome <= 75900) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                higherRate = 15.00;
            } else if (TaxIncome <= 153100) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                totalTax += taxBaracket(75900, 153100, 25.00, TaxIncome);
                higherRate = 25.00;
            } else if (TaxIncome <= 233350) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                totalTax += taxBaracket(75900, 153100, 25.00, TaxIncome);
                totalTax += taxBaracket(153100, 233350, 28.00, TaxIncome);
                higherRate = 28.00;
            } else if (TaxIncome <= 416700) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                totalTax += taxBaracket(75900, 153100, 25.00, TaxIncome);
                totalTax += taxBaracket(153100, 233350, 28.00, TaxIncome);
                totalTax += taxBaracket(233350, 416700, 33.00, TaxIncome);
                higherRate = 33.00;
            } else if (TaxIncome <= 470700) {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                totalTax += taxBaracket(75900, 153100, 25.00, TaxIncome);
                totalTax += taxBaracket(153100, 233350, 28.00, TaxIncome);
                totalTax += taxBaracket(233350, 416700, 33.00, TaxIncome);
                totalTax += taxBaracket(416700, 470700, 35.00, TaxIncome);
                higherRate = 35.00;
            } else {
                totalTax += taxBaracket(0, 18650, 10.00, TaxIncome);
                totalTax += taxBaracket(18650, 75900, 15.00, TaxIncome);
                totalTax += taxBaracket(75900, 153100, 25.00, TaxIncome);
                totalTax += taxBaracket(153100, 233350, 28.00, TaxIncome);
                totalTax += taxBaracket(233350, 416700, 33.00, TaxIncome);
                totalTax += taxBaracket(416700, 470700, 35.00, TaxIncome);
                totalTax += taxBaracket(470700, Integer.MAX_VALUE, 39.60, TaxIncome);
                higherRate = 39.60;
            }
        } else if (status.equals("seprately")) {
            if (TaxIncome <= 9325) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                higherRate = 10.00;
            } else if (TaxIncome <= 37950) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                higherRate = 15.00;
            } else if (TaxIncome <= 76550) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 76550, 25.00, TaxIncome);
                higherRate = 25.00;
            } else if (TaxIncome <= 116675) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 76550, 25.00, TaxIncome);
                totalTax += taxBaracket(76550, 116675, 28.00, TaxIncome);
                higherRate = 28.00;
            } else if (TaxIncome <= 208350) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 76550, 25.00, TaxIncome);
                totalTax += taxBaracket(76550, 116675, 28.00, TaxIncome);
                totalTax += taxBaracket(116675, 208350, 33.00, TaxIncome);
                higherRate = 33.00;
            } else if (TaxIncome <= 235350) {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 76550, 25.00, TaxIncome);
                totalTax += taxBaracket(76550, 116675, 28.00, TaxIncome);
                totalTax += taxBaracket(116675, 208350, 33.00, TaxIncome);
                totalTax += taxBaracket(208350, 235350, 35.00, TaxIncome);
                higherRate = 35.00;
            } else {
                totalTax += taxBaracket(0, 9325, 10.00, TaxIncome);
                totalTax += taxBaracket(9325, 37950, 15.00, TaxIncome);
                totalTax += taxBaracket(37950, 76550, 25.00, TaxIncome);
                totalTax += taxBaracket(76550, 116675, 28.00, TaxIncome);
                totalTax += taxBaracket(116675, 208350, 33.00, TaxIncome);
                totalTax += taxBaracket(208350, 235350, 35.00, TaxIncome);
                totalTax += taxBaracket(235350, Integer.MAX_VALUE, 39.60, TaxIncome);
                higherRate = 39.60;
            }
        }
        int percent = (int) ((totalTax / income) * 100);
        System.out.println("You will pay a total of $" + totalTax + " in taxes, or " + percent + "% of your income, despite begin taxed " + higherRate
                + "% on your highest baracket.");
    }

    private static double taxBaracket(int lower, int higher, double rate, int totalincome) {
        double tax = 0.0;
        int usingcalculatortax = 0;
        if (totalincome > higher)
            usingcalculatortax = higher;
        else
            usingcalculatortax = totalincome;
        tax = ((double) usingcalculatortax - (double) lower) * rate / 100;

        System.out.println("- You will pay $" + tax + " in tax on the $" + ((double) usingcalculatortax - (double) lower) + " in the " + rate + "% bracket ($"
                + lower + " - $" + higher + ")");
        return tax;
    }

}