ActiveAdmin.register Product do
  index do
    column :title
    column :price
    column :description
    column :brand_name
    column :part_number
    default_actions
  end

  show do |ad|
    attributes_table do
      row :title
      row :description
      row :price
      row :brand_name
      row :part_number
    end
    panel "Images" do
      table_for product.images do
        column "image" do |reaction|
          image_tag(reaction.image.thumb)
        end
      end
    end
  end

  

  filter :title
  filter :price

  form(:html => { :multipart => true })  do |f|
    f.inputs "Product Details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :brand_name
      f.input :part_number
      f.input :category_id,  :as => :select, :collection => Category.all{ |c| [c.name, c.id]} , :include_blank => true
      f.has_many :images do |s|
        s.input :image, :as => :file
      end
    end
    f.actions
  end
end
