public class Helperclass {
    
    Public static void UpdateAccount(){
        List<Account> accList = new List<Account>();
        Set<Id> AccIdSet = new Set<Id>();
        for(Contact con:[select Id, Account.Id from contact where name like '%Test%' AND Account.Id != null]){
            if(!AccIdSet.contains(con.Account.Id)){
                Account acc = new Account();
                acc.Name = 'Test';
                acc.Rating = 'Hot';
                acc.Active__c = 'No';
                accList.add(acc);
                AccIdSet.add(con.Account.Id);
            }
        }
        if(!accList.isEmpty()){
            update accList;
        }
            
    }

}