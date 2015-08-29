class AddAttachmentImageToInvestorUpdates < ActiveRecord::Migration
  def self.up
    change_table :investor_updates do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :investor_updates, :image
  end
end
