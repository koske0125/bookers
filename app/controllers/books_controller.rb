class BooksController < ApplicationController

  def list
    @books = List.all
    @list = List.new
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books'
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
