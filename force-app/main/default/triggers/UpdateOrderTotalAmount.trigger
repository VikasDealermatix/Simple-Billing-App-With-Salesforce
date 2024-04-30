trigger UpdateOrderTotalAmount on Order (before insert, before update) {
	
    if(Trigger.isBefore && Trigger.isUpdate) { 
    
            //OrderHelper.updateTotalOrderAmount(Trigger.new, Trigger.old);
    }
}