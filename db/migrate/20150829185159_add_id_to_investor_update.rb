class AddIdToInvestorUpdate < ActiveRecord::Migration
  def change
    add_column :investor_updates, :deal_id, :integer
    add_column :investor_updates, :request_id, :integer
  end
end
