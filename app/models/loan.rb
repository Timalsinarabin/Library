class Loan < ApplicationRecord
  validates :std_id, presence: true, uniqueness: true
  validates :bookname, presence: true
end
