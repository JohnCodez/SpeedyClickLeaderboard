class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :accounts, :username, unique: true
  end
end
