FactoryBot.define do
  factory :dummy_loan do
    std_id { "Stdid#{rand(10000)}" }
    bookname { "Book" }
  end
end
