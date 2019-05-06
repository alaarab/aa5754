ActiveAdmin.register Post do

  permit_params :comment

  controller do
    def show
    @post = Post.find(params[:id])
    show! 
    end
  end

  show do |post|
    active_admin_comments
  end
end
