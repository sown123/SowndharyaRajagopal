package utility;	 
import java.io.*;
          class salary
            {
                float h,d,g;
                void sal(salaryobj m)
                  {
                      h=(float)m.s*60/100;
                      d=(float)m.s*98/100;
                      g=h+d;
                      System.out.println("HRA is:"+h);
                      System.out.println("DA is:"+d);
                      System.out.println("Gross Salary is:"+g);
                 }
           };
                  public class salaryobj
                     {
                          BufferedReader bf=new BufferedReader(new InputStreamReader (System.in));
                          String n,h;
                          int  c,s;
                          salaryobj()
                          throws IOException
                               {
                                    System.out.println("Enter code ");
                                    h=bf.readLine();
                                    c=Integer.parseInt(h);
                                    System.out.println("Enter name ");
                                    n=bf.readLine();
                                    System.out.println("Enter salary ");
                                    h=bf.readLine();
                                    s=Integer.parseInt(h);
                              }
                                   void showdata()
                                     {
                                         System.out.println("Code number :"+c);
                                         System.out.println("worker;s name :"+n);
                                         System.out.println("Salary :"+s);
                                     }
                                         public static void main(String args[]) throws IOException
                                                   {
                                                       salaryobj k=new salaryobj();
                                                       k.showdata();
                                                       salary p=new salary();
                                                       p.sal(k);
                                                   }
	
	
}
