class AddBeschrijvingToBoekingen < ActiveRecord::Migration
  def change
    add_column :boekingen, :beschrijving, :string
  end
end
