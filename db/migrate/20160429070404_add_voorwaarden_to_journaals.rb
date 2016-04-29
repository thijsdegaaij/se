class AddVoorwaardenToJournaals < ActiveRecord::Migration
  def change
    add_column :journaals, :voorwaarden, :text
  end
end
