class RemoveColumnsBoekingen < ActiveRecord::Migration
  def change
    remove_column :boekingen, :boektype_id
  end
end
