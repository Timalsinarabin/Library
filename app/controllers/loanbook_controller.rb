class LoanbookController < ApplicationController
  def index
    @loan = Loan.new
    @books = LibBook.all
  end
  def create
    book = LibBook.find_by(bookname: loan_params[:bookname])
    if book
      @loan = Loan.new(loan_params)
      if @loan.save
        redirect_to loan_book_path, notice: "Sucessfully loaned book"
      else
        redirect_to loan_book_path, alert: "Unsucessfull to loan book"
      end
    else
      redirect_to loan_book_path, alert: "Book does not exists"
    end
  end

  private
  def loan_params
    params.require(:loan).permit(:std_id, :bookname)
  end
end
