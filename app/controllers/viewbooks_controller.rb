class ViewbooksController < ApplicationController
  def viewall
    @books = LibBook.all
  end
end
