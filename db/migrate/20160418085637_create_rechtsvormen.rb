class CreateRechtsvormen < ActiveRecord::Migration
  def change
    create_table :rechtsvormen do |t|
      t.string :naam

      t.timestamps null: false
    end
  end
end
