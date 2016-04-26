class CreateJournaaltypes < ActiveRecord::Migration
  def change
    create_table :journaaltypes do |t|
      t.string :naam
      t.string :icoon

      t.timestamps null: false
    end
  end
end
