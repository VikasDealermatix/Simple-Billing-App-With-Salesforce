public class OrderHelper {
    
    public static void updateTotalOrderAmount(List<Order> oldOrders, List<Order> newOrders) {
        List<Order> orders = new List<Order>();
        orders.addAll(oldOrders);
        orders.addAll(newOrders);
        // Loop through the orders
        for(Order order : orders) {
            Decimal totalOrderAmount = 0;
            // Query related order lines for the current order
            List<Order_Lines__c> relatedOrderLines = [SELECT Total_OrderLine_Amount__c FROM Order_Lines__c WHERE Order__c = :order.Id];
            // Calculate the total order amount
            for(Order_Lines__c orderLine : relatedOrderLines) {
                totalOrderAmount += orderLine.Total_OrderLine_Amount__c;
            }
            // Update the total order amount on the order
            order.Total_Order_Amount__c = totalOrderAmount;
        }
        // Update the orders
        update orders;
    }
}



/*public class OrderHelper {
	
    public static void getOrderLineSum(List<Order_Lines__c> oldOrders, List<Order_Lines__c> newOrders) {
         	
   		Order.Total_Order_Amount__c = 0;
        if(oldOrders != null) {
            	
            for(Order_Lines__c oldOrder : oldOrders) {
                	
                Order.Total_Order_Amount__c += oldOrder.Total_OrderLine_Amount__c;
            }
        }
        
        if(newOrders != null) {
            	
            
        }
    }
}

*/