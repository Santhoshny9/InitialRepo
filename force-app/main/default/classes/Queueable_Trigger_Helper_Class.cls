public class Queueable_Trigger_Helper_Class implements Queueable{
    
   Private List<Account> ListofAccs;
   
    Public Queueable_Trigger_Helper_Class(List<Account> accList){
        ListofAccs = accList;
    }
    
    Public void execute(Queueablecontext qcxt){
        List<Contact> conList = new List<Contact>();
        for(Account acc: ListofAccs){
            Contact con = new Contact();
            con.LastName = acc.name + 'Contact';
            con.AccountID = acc.Id;
            conList.add(con);
        }
        if(conList.size()>0){
            Insert conList;
        }
    }
}