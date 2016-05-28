class ExtraKolomBedrijfstakken < ActiveRecord::Migration
  def change
    add_column :bedrijfstakken, :letter, :string
  end
end
