class CreateLibBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :lib_books do |t|
      t.string :bookname
      t.string :author

      t.timestamps
    end
  end
end
