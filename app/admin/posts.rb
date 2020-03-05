ActiveAdmin.register Post do


  permit_params :title, :subtitle, :description, :images, :headline_picture, :id

  filter :title, :as => :string
  filter :subtitle, :as => :string
  filter :description, :as => :text

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :subtitle
      f.input :images, as: :file, input_html: { multiple: true }
      f.input :headline_picture, as: :file
    end
    f.actions
  end

  show do
    attributes_table do

      row :title
      row :description
      row :subtitle

      row :headline_picture do |head|
        image_tag url_for(head.headline_picture)
      end

      row "Images" do
         ul do
          post.images.each do |img|
            li do 
              image_tag url_for(img.images)
            end
          end
         end
      end

    end
  end


  
end
