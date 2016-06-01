class CreateMensen < ActiveRecord::Migration
  def change
    create_table :mensen do |t|
      t.string :naam
      t.integer :leeftijd
      t.string :geslacht
      t.string :kennisniveau
      t.string :gezondheidsniveau
      t.string :geluksniveau

      t.timestamps null: false
    end
  end
end
