class AddRateToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :rate, :float
  end
end
