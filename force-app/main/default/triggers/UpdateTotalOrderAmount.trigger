trigger UpdateTotalOrderAmount on Order_Lines__c (before insert, before update) {
	
        //OrderHelper.getOrderLineSum(Trigger.old, Trigger.new);
}