class BooksController < ApplicationController
protect_from_forgery

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    flash[:notice] = "投稿成功メッセージ"
    # このredirect_toは効いてる
    redirect_to "/books"

  end

  # 一覧と投稿フォームを表示
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end



  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end


