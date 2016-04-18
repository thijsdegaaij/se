class CreateBedrijfstakken < ActiveRecord::Migration
  def change
    create_table :bedrijfstakken do |t|
      t.string :naam

      t.timestamps null: false
    end
  end
end
