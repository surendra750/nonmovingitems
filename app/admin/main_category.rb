# ActiveAdmin.register MainCategory do
#   index do
#     column :main_cat_name
#     default_actions
#   end

#   show do |ad|
#     attributes_table do
#       row :main_cat_name
#     end
#     panel "Image" do
# 	    image_tag(main_category.image.image.thumb)
#     end

#     panel "Sub Categories" do
#       div class: 'attributes_table' do
#         table do
#           tr do
#             th 'Id'
#             th 'Sub Category Name'
#             th 'Image'
#           end
#           main_category.sub_categories.each do |sub|
#             tr do
#               td link_to sub.id, admin_sub_category_path(sub)
#               td sub.sub_category_name
#               td image_tag(sub.image.image.thumb)
#             end
#           end
#         end
#       end
#     end
#   end

  

#   filter :main_cat_name

#   form(:html => { :multipart => true })  do |f|

#     f.inputs "Main Category" do
#       f.input :main_cat_name
#     end
#     f.inputs "Image", :for => [:image, f.object.image || Image.new] do |i|
#       i.input :image, :as => :file
#     end

#     f.actions
#   end
# end