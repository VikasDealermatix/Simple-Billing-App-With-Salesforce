public class ProductOrderLinesHelper {
	
    public static void updateTotalOrderAmount(List<Product_Order_Lines__c> newPOLines) {
			
        
		//List<Product_Order__c> productOrders = [SELECT Name, Total_Order_Amount__c FROM Product_Order_Lines__c];
        if(newPOLines != null) {
            
            for(Product_Order_Lines__c POLine : newPOLines) {
                
                                
            }
        }
    }
}