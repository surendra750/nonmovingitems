class CreateMainCategories < ActiveRecord::Migration
  def change
    create_table :main_categories do |t|
      t.string :main_cat_name
      t.timestamps
    end
  end
end
