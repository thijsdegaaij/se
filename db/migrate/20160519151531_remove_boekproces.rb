class RemoveBoekproces < ActiveRecord::Migration
  def change
    drop_table :boekproces
  end
end
