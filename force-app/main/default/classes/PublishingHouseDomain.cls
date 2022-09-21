public class PublishingHouseDomain 
 {
    public PublishingHouseDomain() 
    {
        
    }

    public static List<Book__c> getPublishedbooks(List<String> BookNameAndPublishingHouseName)
    {
        List<Publishing_House__c> publishingHouseBooks;
        List<Book__c> theBooks = new List<Book__c>();

        publishingHouseBooks = [SELECT Book__r FROM Publishing_House__c WHERE Book__r.name in: BookNameAndPublishingHouseName];

        for(Publishing_House__c phousebook: publishingHouseBooks)
        {
            theBooks.add(phousebook.Book__r);
        }
        
        return theBooks;
    }
}
