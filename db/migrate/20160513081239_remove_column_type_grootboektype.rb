class RemoveColumnTypeGrootboektype < ActiveRecord::Migration
  def change
     remove_column :grootboektypes, :type
  end
end
