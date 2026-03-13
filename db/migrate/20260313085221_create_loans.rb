class CreateLoans < ActiveRecord::Migration[8.1]
  def change
    create_table :loans do |t|
      t.string :std_id
      t.string :bookname

      t.timestamps
    end
  end
end
