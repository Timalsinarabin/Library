class ViewbooksController < ApplicationController
  def viewall
    if params[:search]
      @books = LibBook.where("bookname like ?", "%#{params[:search]}%")
    else
      @books = LibBook.order(:bookname)
    end
  end
end
