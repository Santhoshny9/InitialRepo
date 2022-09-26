public class Queueable_Class1 implements Queueable {
    
    Public void execute(Queueablecontext qctx){
        Delete [Select Id from contact where Createddate = today];
        System.enqueueJob(new Queueable_Class2());
    }

}