trigger UpdateOrderTotalAmount on Order (before insert, before update) {
	
    OrderHelper.updateTotalOrderAmount(Trigger.new, Trigger.old);
}