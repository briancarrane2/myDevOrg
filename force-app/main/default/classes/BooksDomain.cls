public class BooksDomain 
 {
    public BooksDomain() 
    {
       
    }

    public static List<Book__c> getBooksAlreadyPublishedUnderPublishingHouse(List<String> BookName)
    {
        List<Book__c> booksAlreadyPublishedByAnotherHouse;
        booksAlreadyPublishedByAnotherHouse = PublishingHouseDomain.getPublishedbooks(BookName);

        return booksAlreadyPublishedByAnotherHouse;
    }
}
