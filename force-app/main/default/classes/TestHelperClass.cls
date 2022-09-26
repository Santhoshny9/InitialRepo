@isTest
public class TestHelperClass {
    
    @isTest
    private static void UpdateAccountTest(){
        
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Rating = 'cold';
        acc.Active__c = 'Yes';
        insert acc;
        
        contact con = new contact();
        con.FirstName = 'Test';
        con.LastName = 'Test';
        con.Id = acc.Id;
        insert con;
        
        Helperclass.UpdateAccount();
        Account Accupdated = [select Id, Active__c, Rating from Account where Id =: acc.Id];
        System.assertEquals('Hot', Accupdated.Rating);
    }

}