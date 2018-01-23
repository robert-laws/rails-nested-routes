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
    @book = Book.new(author_id: params[:author_id])
  end

  def create
  end

  def edit
  end

  def update
  end
end
