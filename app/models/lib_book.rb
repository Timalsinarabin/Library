class LibBook < ApplicationRecord
  validates :bookname, presence: true
  validates :author, presence: true
end
