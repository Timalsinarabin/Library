require 'rails_helper'

RSpec.describe DummyLoan, type: :model do
  it 'is valid' do
    loanbook = build(:dummy_loan)
    expect(loanbook).to be_valid
  end
end
