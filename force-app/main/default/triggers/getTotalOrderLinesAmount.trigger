trigger getTotalOrderLinesAmount on Order_Lines__c (before insert, before update) {
        
        if(Trigger.isInsert && Trigger.isUpdate) {

                GetDFinalOrderSumOfLines.getFinalOrderSum(Trigger.new);
        }
}