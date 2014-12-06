class AddFieldsToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :price, :float
  	add_column :products, :description, :string
  end
end
