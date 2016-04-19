class CreateBoekingen < ActiveRecord::Migration
  def change
    create_table :boekingen do |t|
      t.integer :boek_type_id
      t.integer :grootboekrekening_id
      t.integer :overeenkomst_id
      t.integer :product_id
      t.date :datum
      t.string :icoon
      t.string :bij_af
      t.integer :waarde
      t.integer :p_inkoop
      t.integer :hoeveelheid

      t.timestamps null: false
    end
  end
end
