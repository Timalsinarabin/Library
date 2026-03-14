class ReturnbookController < ApplicationController
  def destroy
    @destroy_loan = Loan.find_by(id: params[:id])
    if @destroy_loan&.destroy
      redirect_to dashboard_path, notice: "Sucessfully returned the book"
    else
      redirect_to dashboard_path, alert: "failed to return the book"
    end
  end
end
