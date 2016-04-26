class CreateJournaals < ActiveRecord::Migration
  def change
    create_table :journaals do |t|
      t.integer :journaal_type_id
      t.string :boeknummer
      t.date :datum
      t.string :leverancier
      t.string :klant
      t.integer :hoeveelheid
      t.string :eenheid
      t.string :productnaam
      t.decimal :stukprijs
      t.string :betalingswijze
      t.string :valuta
      t.integer :btw_percentage
      t.decimal :bedrag_ex_btw
      t.decimal :bedrag_inc_btw

      t.timestamps null: false
    end
  end
end
