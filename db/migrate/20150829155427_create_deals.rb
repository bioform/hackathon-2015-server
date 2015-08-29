class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.float :amount
      t.string :term
      t.string :loan_position
      t.date :funded_date
      t.float :purchase_price
      t.float :current_value
      t.float :borrowers_equity
      t.float :completion_value

      t.timestamps null: false
    end
  end
end
