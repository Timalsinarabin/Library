class LoanbookController < ApplicationController
  def index
    @loan = Loan.new
  end
  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      redirect_to loan_book_path, notice: "Sucessfully loaned book"
    else
      redirect_to loan_book_path, alert: "Unsucessfull to loan book"
    end
  end
end

private
def loan_params
  params.require(:loan).permit(:std_id, :bookname)
end
