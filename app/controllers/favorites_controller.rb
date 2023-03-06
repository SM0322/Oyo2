class FavoritesController < ApplicationController
  def create
    #そのidをbook_idとして受け取り、bookを探し、変数に渡します。
    @book = Book.find(params[:book_id])
    #@bookのidをbook_idとして、current_userのidをuser_idとしてfavoritesを作り、変数に渡します。
    @favorite = current_user.favorites.new(book_id: @book.id)
    @favorite.save
    # redirect_to book_path(@book)
  end 
  
  def destroy
    @book = Book.find(params[:book_id])
    #current_userのfavoritesの中から@bookのidをbook_idとしてfind_byメソッドにより探し、変数に渡します。
    @favorite = current_user.favorites.find_by(book_id: @book.id)
    @favorite.destroy
    # redirect_to book_path(@book)
  end
end
