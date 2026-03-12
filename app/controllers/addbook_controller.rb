class AddbookController < ApplicationController
  def new
    @add_book = LibBook.new
  end
  def create
    @add_book = LibBook.new(libBook_param)
    if @add_book.save
      redirect_to dashboard_path, notice: "Sucessfully added book"
    else
      flash.now[:alert] = "Unsuccessful to add a book"
      render :new, status: :unprocessable_entity
    end
  end
  private
  def libBook_param
    params.require(:lib_book).permit(:bookname, :author)
  end
end
