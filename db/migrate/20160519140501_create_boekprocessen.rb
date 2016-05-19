class CreateBoekprocessen < ActiveRecord::Migration
  def change
    create_table :boekprocessen do |t|
      t.string :naam
      t.string :icoon

      t.timestamps null: false
    end
  end
end
