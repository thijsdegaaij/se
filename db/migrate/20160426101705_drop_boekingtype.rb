class DropBoekingtype < ActiveRecord::Migration
  def change
    drop_table :boektypes
  end
end
