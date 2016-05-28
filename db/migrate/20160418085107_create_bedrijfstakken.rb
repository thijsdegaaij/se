class CreateBedrijfstakken < ActiveRecord::Migration
  def change
    create_table :bedrijfstakken do |t|
      t.string :letter 
      t.string :naam

      t.timestamps null: false
    end
  end
end
