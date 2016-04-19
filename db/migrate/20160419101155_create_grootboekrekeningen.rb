class CreateGrootboekrekeningen < ActiveRecord::Migration
  def change
    create_table :grootboekrekeningen do |t|
      t.string :naam
      t.integer :gbr_categorie_id
      t.string :organisatie_id
      t.string :icoon

      t.timestamps null: false
    end
  end
end
