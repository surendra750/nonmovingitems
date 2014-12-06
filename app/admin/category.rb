ActiveAdmin.register Category do
  index do
    column :name
    default_actions
  end

  show do |ad|
    attributes_table do
      row :name
    end
    panel "Image" do
	    image_tag(category.image.image.thumb)
    end
  end

  

  filter :name

  form(:html => { :multipart => true })  do |f|
    f.inputs "Category" do
      f.input :name
      f.input :parent_id,  :as => :select, :collection => Category.all{ |c| [c.name, c.id]} , :include_blank => true
    end
    f.inputs "Image", :for => [:image, f.object.image || Image.new] do |i|
      i.input :image, :as => :file
    end

    f.actions
  end
end
