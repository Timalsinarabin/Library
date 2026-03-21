class CreateDummyUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :dummy_users do |t|
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
