public class ApexClass1 {
    
    Public Static List<String> GetNames(){
        List<Account> AccList = [Select Name, AnnualRevenue from Account limit 10];
        List<String> Names = new List<String>();
        for(Account acc:AccList){
            Names.add(acc.Name);
            
        }
        for(String str: Names){
            System.debug(str);
        }

        return Names;
    }
}