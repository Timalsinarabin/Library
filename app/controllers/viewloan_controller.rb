class ViewloanController < ApplicationController
  def index
    @viewLoan = Loan.order(:std_id)
  end
end
