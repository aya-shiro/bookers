class BooksController < ApplicationController
protect_from_forgery

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(id: params[:id])
    @book.save
    # このredirect_toは効いてる
    redirect_to "/books"
    flash[:notice] = "投稿成功メッセージ"
  end

  # 一覧と投稿フォームを表示
  def index
    @books = Book.new
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
end
