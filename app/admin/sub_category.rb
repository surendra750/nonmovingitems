ActiveAdmin.register SubCategory do
  index do
    column :sub_category_name
    default_actions
  end

  show do |ad|
    attributes_table do
      row 'Main Category' do 
      	link_to sub_category.main_category.main_cat_name, admin_main_category_path(sub_category.main_category)
      end
      row :sub_category_name
    end
    panel "Image" do
	    image_tag(sub_category.image.image.thumb)
    end
  end

  

  filter :sub_category_name

  form(:html => { :multipart => true })  do |f|
    
    f.inputs "Sub Category" do
      f.input :main_category_id, :label => 'Select Main Category', :as => :select, :collection => MainCategory.all.map{|u| [ u.main_cat_name, u.id]}, include_blank: false
      f.input :sub_category_name
    end
    f.inputs "Image", :for => [:image, f.object.image || Image.new] do |i|
      i.input :image, :as => :file
    end

    f.actions
  end
end
