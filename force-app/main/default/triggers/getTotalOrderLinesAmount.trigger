trigger getTotalOrderLinesAmount on Order_Lines__c (before insert, before update) {
		
        GetDFinalOrderSumOfLines.getFinalOrderSum(Trigger.new);
}