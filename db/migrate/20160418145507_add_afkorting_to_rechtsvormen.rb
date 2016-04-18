class AddAfkortingToRechtsvormen < ActiveRecord::Migration
  def change
    add_column :rechtsvormen, :afkorting, :string
  end
end
