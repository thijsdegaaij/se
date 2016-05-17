class AddColumnBoekingtypeToBoekingen < ActiveRecord::Migration
  def change
    add_column :boekingen, :boekingtype, :string
  end
end
