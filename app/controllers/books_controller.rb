class BooksController < ApplicationController
protect_from_forgery

  def new
  end

  def create
    # 取得したデータparamsをテーブルにsave
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created！"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  # 一覧と投稿フォームを表示
  def index
    # ★対応するビューで使っている変数は定義が必要！！
    @book = Book.new
    @books = Book.all.order(created_at: :asc)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "Book was successfully updated!"
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed!"
    redirect_to books_path
  end



  private

# ここでデータparamsを取得
  def book_params
    params.require(:book).permit(:title, :body)
  end

end


