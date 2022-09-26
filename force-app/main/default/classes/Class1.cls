Public class Class1{
    
    Public static void UpdateAccount(){
        List<Account> accTobeUpdated = new List<Account>();
        set<Id> accIdSet = new Set<ID>();
        for(Contact con : [select Id, Account.Id from Contact where Name like '%Name%' AND Account.Id != NUll]){
            if(!accIdSet.contains(con.Account.Id)){
                Account acc = new Account();
                acc.Id = con.Account.Id;
                acc.active__c = 'Yes';
                acc.Rating = 'Hot';
                accTobeUpdated.add(acc);
                accIdSet.add(con.Account.Id);
                
            }
        }
        if(!accTobeUpdated.isEmpty()){
            update accTobeUpdated;
        }
    }
}