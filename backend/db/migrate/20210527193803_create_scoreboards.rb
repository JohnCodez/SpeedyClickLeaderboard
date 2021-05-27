class CreateScoreboards < ActiveRecord::Migration[6.1]
  def change
    create_table :scoreboards do |t|
      t.string :username
      t.integer :score
      t.string :gamemode

      t.timestamps
    end
  end
end
