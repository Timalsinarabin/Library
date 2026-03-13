class ViewbooksController < ApplicationController
  def viewall
    @books = LibBook.order(:bookname)
  end
end
