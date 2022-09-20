public class BookController 
{

    @AuraEnabled
    public static List<Book__c> getBooksByAuthor()
    {
        List<Book__c> bookByAuthor = new List<Book__c>();
 
        return bookByAuthor = [SELECT Name, Author__c FROM Book__c];
    }

    @AuraEnabled
    public static List<Book__c> getBooksByGenre()
    {
        List<Book__c> bookByGenre = new List<Book__c>();
        
        return bookByGenre = [SELECT Name, Genre__c FROM Book__c];
    }
}
