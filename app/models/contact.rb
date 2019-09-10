class Contact < MailForm::Base
  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :description,   :validate => true
  attribute :phone_number, :validate => true
  attribute :address, :validate => true
  attribute :city, :validate => true
  attribute :state, :validate => true
  attribute :zip, :validate => true
  attribute :country, :validate => true
  attribute :shoe_type, :validate => true
  attribute :shoe_size, :validate => true
  attribute :shoe_model, :validate => true
  attribute :service_type, :validate => true
  attributes :front_picture, :attachment => true
  attributes :back_picture, :attachment => true
  attributes :left_picture, :attachment => true
  attributes :right_picture, :attachment => true


  def headers
    {
      :subject => "Service Request",
      :to => "takecareny96@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end

  # Takecareny96@gmail.com
  # thronetechnology@gmail.com
end
