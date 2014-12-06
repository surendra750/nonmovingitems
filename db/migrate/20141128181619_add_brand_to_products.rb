class AddBrandToProducts < ActiveRecord::Migration
  def change
    add_column :products, :brand_name, :string
    add_column :products, :part_number, :string
  end
end
