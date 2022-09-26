public class NewClass {
    
    Public void NewClass(){
        Account acc = new Account(name = 'Test_acc_San');
        insert acc;
        InsertUserRole('Techstack@gmail.com','abc', 'abcd@gmail.com', 'bcd');
    }
    @Future
    Public Static void InsertUserRole(String Uname, String al, String email, string Lname){
        Profile p = [select Id from profile where name = 'Standard User'];
        UserRole r = [Select ID from UserRole where name = 'COO'];
        user u = new user(alias = al, email = email, Lastname = Lname, username = Uname, UserRoleId = r.Id, ProfileId = p.Id,
                         EmailEncodingKey = 'UTF-8', LanguageLocaleKey = 'en_US',LocaleSidKey = 'en_US',TimeZoneSidKey = 'America/Los_Angeles');
        Insert u;
    }
}