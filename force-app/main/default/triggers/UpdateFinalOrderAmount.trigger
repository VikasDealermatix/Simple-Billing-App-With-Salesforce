trigger UpdateFinalOrderAmount on Product_Order_Lines__c (before insert, before update) {
	
        ProductOrderLinesHelper.updateTotalOrderAmount(Trigger.new);
}