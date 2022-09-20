import { LightningElement, wire } from 'lwc';
import getBooksByAuthor from '@salesforce/apex/BookController.getBooksByAuthor';
import getBooksByGenre from '@salesforce/apex/BookController.getBooksByGenre';
export default class BooksDisplay extends LightningElement 
{
    @wire(getBooksByAuthor) booksByAuthor;
    @wire(getBooksByGenre) booksByGenre;
}

