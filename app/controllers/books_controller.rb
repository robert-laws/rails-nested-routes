class BooksController < ApplicationController
  def index
    if params[:author_id]
      @author = Author.find_by(id: params[:author_id])
      if @author
        @books = @author.books
      else
        redirect_to books_path
      end
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    if params[:author_id] && !Author.exists?(params[:author_id])
      redirect_to authors_path, alert: "Author not found."
    else
      @book = Book.new(author_id: params[:author_id])
    end
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to book_path(@book)
  end

  def edit
    if params[:author_id]
      author = Author.find_by(id: params[:author_id])
      if author.nil?
        redirect_to authors_path, alert: "Author not found."
      else
        @book = author.books.find_by(id: params[:id])
        redirect_to author_books_path(author), alert: "Book not found." if @book.nil?
      end
    else
      @book = Book.find(params[:id])
    end
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author_id)
  end
end
