class BooksController < ApplicationController

   def index 
    books = Book.all 
    render json: books
   end

   def create
      book = Book.create(book_params)
      user = get_current_user
      render json:{book_id:book.id, user_id: user.id } 
   end 

   private

   def book_params
      params.require(:book).permit(:title, :author, :description, :image, :genre)
    end
    
end