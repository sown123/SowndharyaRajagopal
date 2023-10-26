package utility;

import java.util.*;
public class taxation
{
     public static void main(String args[])
     {
    	  String employeid;
          String empname;
          float basicsalary,HRA,DA,GS,incometax,netsalary;
    	 
    	 Scanner scan= new Scanner(System.in);
         System.out.println("Enter the employee id");//taking all the inputs from the user
         employeid=scan.next();
         System.out.println("Enter the employee name");
         empname=scan.next();
         System.out.println("Enter the basic salary of an employee");
         basicsalary=scan.nextFloat();
        
         int a=10;
         int b=100;
         HRA=(a/b)*basicsalary;
         System.out.println(HRA);
         DA=(73/100)*basicsalary;
         GS=basicsalary+DA+HRA;
         incometax=(30/100)*GS;
         netsalary=GS-incometax;

    	 System.out.println("Employeeid  :  "+employeid+"n"+"Employename  :  "+empname+"n"+"Employee basic salary :  "+basicsalary+"n"+"HRA  :  "+HRA+"n"+"DA  :  "+DA+"n"+"GS  :  "+GS+"n"+"Incometax  :  "+incometax+"n"+"netsalary  :  "+netsalary);
          }
}