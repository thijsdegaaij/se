class ChangeColumnJournaalType < ActiveRecord::Migration
  def change
    rename_column :journaals, :journaal_type_id, :journaaltype_id
  end
end
