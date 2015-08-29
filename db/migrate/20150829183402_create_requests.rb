class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.float :amount
      t.string :purpose

      t.timestamps null: false
    end
  end
end
