class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to books_path
    else
      render :index
    end
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
