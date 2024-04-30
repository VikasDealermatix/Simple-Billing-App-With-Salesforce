public class GenerateInvoiceController {
    
    public Date invoiceDate{get;set;}
    public Time invoiceTime {get; set;}
    public String invoiceName{get;set;}
    public Decimal totalAmount{get;set;}
    public String paymentID{get;set;}
    public String sellerName{get; set;}
    public String sellerGSTIN{get; set;}
    public String customerName{get; set;}
    public String invoiceLine{get; set;}
    public List<Payments__c> processedPayments{get; set;}
    public List<Product_Order_Lines__c> productOrderLines{set; get;}
        
    public GenerateInvoiceController() {
        getInvoice();
    }
    
    public void getInvoice() {
        
        
       	Sale_Invoice__c invoice = [SELECT Name, Date__c, Time__c, Total_Amount__c, PaymentID__c 
                                   FROM Sale_Invoice__c 
                                   LIMIT 1];
        
        processedPayments = [SELECT Name, Product_Order__c, Status__c, Total_Amount__c, Date__c FROM Payments__c WHERE Status__c = 'Processed'];

        productOrderLines = [SELECT Select_Product__c, Enter_Quantity__c, Total_Order_Line_Amount__c FROM Product_Order_Lines__c];
       
        
        if(invoice != null) {
            invoiceDate = invoice.Date__c;
            invoiceTime = invoice.Time__c;
            invoiceName = invoice.Name;
            totalAmount = invoice.Total_Amount__c;
            paymentID = invoice.PaymentID__c;
            sellerName = 'Redmi India';
            sellerGSTIN = 'NPBKASDFJKLASDF';
            customerName = 'Vikas Kare';
            //invoiceLine = 'IVL-1001';
        }
    }
}