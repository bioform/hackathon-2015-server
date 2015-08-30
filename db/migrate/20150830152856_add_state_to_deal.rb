class AddStateToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :state, :string
  end
end
