class CreateInvestorUpdates < ActiveRecord::Migration
  def change
    create_table :investor_updates do |t|
      t.string :title
      t.text :summary

      t.timestamps null: false
    end
  end
end
