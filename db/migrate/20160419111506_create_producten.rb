class CreateProducten < ActiveRecord::Migration
  def change
    create_table :producten do |t|
      t.string :naam
      t.string :icoon

      t.timestamps null: false
    end
  end
end
