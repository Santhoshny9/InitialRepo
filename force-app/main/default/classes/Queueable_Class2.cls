public class Queueable_Class2 implements Queueable {
    
    Public void execute(QueueableContext Qcxt){
        Delete [Select ID from Account where createdDate = Today];
    }

}