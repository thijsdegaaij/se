class CreateOrganisaties < ActiveRecord::Migration
  def change
    create_table :organisaties do |t|
      t.string :naam
      t.integer :bedrijfstak_id
      t.integer :rechtsvorm_id

      t.timestamps null: false
    end
  end
end
