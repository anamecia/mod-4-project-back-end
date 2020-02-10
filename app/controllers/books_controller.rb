class BooksController < ApplicationController

   def index 
    books = Books.all 
    render json: books
   end

    
end