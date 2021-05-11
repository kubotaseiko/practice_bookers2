class UsersController < ApplicationController
  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @book = Book.new
    @books = Book
    @user = User.find(params[:id])
  end

  def edit
  end
end
