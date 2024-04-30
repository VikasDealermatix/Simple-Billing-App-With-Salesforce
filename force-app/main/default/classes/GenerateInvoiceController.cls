public class GenerateInvoiceController {
    
    public Date invoiceDate{get;set;}
    public Time invoiceTime {get; set;}
    public String invoiceName{get;set;}
    public Decimal totalAmount{get;set;}
    public String paymentID{get;set;}
    
    public GenerateInvoiceController() {
        getInvoice();
    }
    
    private void getInvoice() {
        Sale_Invoice__c invoice = [SELECT Name, Date__c, Time__c, Total_Amount__c, PaymentID__c 
                                   FROM Sale_Invoice__c 
                                   WHERE Name = 'INVOICE-1015'
                                   LIMIT 1];
        
        if(invoice != null) {
            invoiceDate = invoice.Date__c;
            invoiceTime = invoice.Time__c;
            invoiceName = invoice.Name;
            totalAmount = invoice.Total_Amount__c;
            paymentID = invoice.PaymentID__c;
        }
    }
}