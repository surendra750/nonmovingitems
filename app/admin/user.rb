ActiveAdmin.register User do
    
    index do
        column :email
        column :current_sign_in_at
        column :last_sign_in_at
        column :sign_in_count
        column :role
        default_actions
    end
 
    filter :email
 
    form do |f|
        f.inputs "User Details" do
            f.input :email
            f.input :password
            f.input :password_confirmation
            f.input :role, as: :radio, collection: {'Super Admin' => 'super_admin', 'Admin' => "admin", 'Visitor' => "visitor"}
        end
        f.actions
    end
end