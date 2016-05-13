class AddColumnTypeGrootboektype < ActiveRecord::Migration
  def change
    add_column :grootboektypes, :type, :text
  end
end
