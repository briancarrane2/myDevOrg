trigger Books on Book__c 
(after delete, after insert, after undelete, after update, before delete, before insert, before update) 
{
    if (trigger.isBefore && trigger.isInsert)
    {
        List<String> bookName = new List<String>();
        List<Book__c> booksToStopDML;

        for (Book__c book: trigger.new)
        {
            bookName.add(book.Name);
            book.Publishing_Date__c = Date.today();
        }
        
        booksToStopDML = BooksDomain.getBooksAlreadyPublishedUnderPublishingHouse(bookName);
        if(!booksToStopDML.isEmpty())
        {
            for(Book__c bookAlreadyPublished: booksToStopDML)
            {
                bookAlreadyPublished.addError('Book cannot be published by more than one publishing house');
            }
        }
        
    }
}