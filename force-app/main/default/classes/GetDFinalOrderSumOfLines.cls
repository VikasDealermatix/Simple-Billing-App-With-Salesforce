public class GetDFinalOrderSumOfLines {

    public static void getFinalOrderSum(List<Order_Lines__c> orderLines) {
        
        if(orderLines != null) {
           
            for(Order_Lines__c orderLine : orderLines) {
                
                if(orderLine.Total_amount__c != null) {
                    
                    if(orderLine.Total_OrderLine_Amount__c != 0) {
                        orderLine.Total_OrderLine_Amount__c = 0; // Initialize to 0 if null
                    }
                   
                    orderLine.Total_OrderLine_Amount__c += orderLine.Total_amount__c;
                }
            }
        }
    }
}



/*public class GetDFinalOrderSumOfLines {

    public static void getFinalOrderSum(List<Order_Lines__c> orderLines) {
        	
        if(orderLines != null) {
           
            for(Order_Lines__c orderLine : orderLines) {
            	
                if(orderLine.Total_amount__c != null) {
                    
                    orderLine.Total_OrderLine_Amount__c += orderLine.Total_amount__c;
                }
        	}
        }
    }
}

*/