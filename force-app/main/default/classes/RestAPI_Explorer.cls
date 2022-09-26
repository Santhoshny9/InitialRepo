@RestResource(urlmapping = '/cases/*')
global class RestAPI_Explorer {
    @httpget
    
    Global static List<Account> getcasebyID(){
        Restrequest request1 = Restcontext.request;
        string AccountId = request1.requestURI.substring(request1.requestURI.lastindexof('/')+1);
        List<Account> accList = [select Id, name from Account];
        return accList;
    }   
    /*@httpPost
    
    Global Static Id CreateCase(String subject,String priority,String status,String origin){
        case cas = new case(
            Subject = subject,
            Priority = priority,
            Status = status,
            Origin = origin
        );
        insert cas;
        return cas.Id;
    }
    @httpdelete
    
    Global static void DeleteCasebyID(){
        Restrequest request1 = Restcontext.request;
        string caseId = request1.requestURI.substring(request1.requestURI.lastindexof('/')+1);
        Case case1 = [select Id, casenumber, subject, priority, origin from case where Id =: caseId];
        if(case1 != null){
            Delete case1;
        }
    }
	@httpput
    
   Global Static Id CreateOrUpdateCase(String subject,String priority,String status,String origin, Id caseId){
        case cas = new case(
            Subject = subject,
            Priority = priority,
            Status = status,
            Origin = origin,
            Id  = caseId
        );
        upsert cas;
        return cas.Id;
    }*/
}