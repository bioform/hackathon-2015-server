class AddIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :deal_id, :integer
  end
end
