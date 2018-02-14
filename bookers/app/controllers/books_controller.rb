class BooksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def books
    @book =  Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end


end
