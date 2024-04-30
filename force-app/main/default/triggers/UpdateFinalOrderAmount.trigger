trigger UpdateFinalOrderAmount on Product_Order_Lines__c (before insert, before update) {
		
    if(Trigger.isInsert && Trigger.isUpdate) {
        
        ProductOrderLinesHelper.updateTotalOrderAmount(Trigger.new);
    }
}