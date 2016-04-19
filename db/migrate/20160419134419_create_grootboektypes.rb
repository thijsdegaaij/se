class CreateGrootboektypes < ActiveRecord::Migration
  def change
    create_table :grootboektypes do |t|
      t.string :naam
      t.string :icoon

      t.timestamps null: false
    end
  end
end
