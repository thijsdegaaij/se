class AddColumnBoekprocesIdToBoeking < ActiveRecord::Migration
  def change
    add_column :boekingen, :boekproces_id, :integer
  end
end
