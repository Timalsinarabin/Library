class AddPriceToLibBook < ActiveRecord::Migration[8.1]
  def change
    add_column :lib_books, :price, :decimal
  end
end
