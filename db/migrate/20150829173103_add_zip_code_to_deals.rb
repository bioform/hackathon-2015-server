class AddZipCodeToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :zip_code, :string
  end
end
