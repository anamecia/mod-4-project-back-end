class BooksController < ApplicationController

   def index 
    books = Book.all 
    render json: books
   end

   def create
      user = get_current_user
      book = Book.find_by(google_id: params[:book][:google_id])
      if book
         render json:{book_id:book.id, user_id: user.id } 
      else
         book = Book.create(book_params)
         render json:{book_id:book.id, user_id: user.id } 
      end
   end 

   private

   def book_params
      params.require(:book).permit(:title, :authors, :description, :image, :genre, :google_id)
    end
    
end