public class ApexClass2 {
    
    Public List<Account> method1(){
        List<Account> Acclist = [Select Name, AnnualRevenue from Account limit 10];
        return Acclist;
    }
}