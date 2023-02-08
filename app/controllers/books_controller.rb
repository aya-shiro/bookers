class BooksController < ApplicationController
protect_from_forgery

  def new
  end

  def create
    book = Book.new(book_params)
    book.save
    # この2文でid取得する！
    flash[:notice] = "投稿成功メッセージ"
    redirect_to "/books"

  end

  # 一覧と投稿フォームを表示
  def index
    # ★対応するビューで使っている変数は定義が必要！！
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update
    flash[:notice] = "更新成功メッセージ"
    redirect_to book_path(book.id)
  end

  def destroy
  end



  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end


