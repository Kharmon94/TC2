ActiveAdmin.register Post do


  permit_params :title, :subtitle, :description, :images, :headline_picture

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
  
end
