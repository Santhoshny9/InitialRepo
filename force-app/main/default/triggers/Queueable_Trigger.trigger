trigger Queueable_Trigger on Account (after insert) {
    
    if(Trigger.isAfter && Trigger.isInsert){
        System.enqueueJob(new Queueable_Trigger_Helper_Class(Trigger.New));
    }

}