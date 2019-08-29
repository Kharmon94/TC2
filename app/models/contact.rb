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

  def headers
    {
      :subject => "Service Request",
      :to => "thronetechnology@gmail.com",
      :from => %("#{first_name}" <#{email}>)
    }
  end
end
