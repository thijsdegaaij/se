class CreateBoektypes < ActiveRecord::Migration
  def change
    create_table :boektypes do |t|
      t.string :naam

      t.timestamps null: false
    end
  end
end
