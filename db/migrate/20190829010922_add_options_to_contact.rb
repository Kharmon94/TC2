class AddOptionsToContact < ActiveRecord::Migration[5.2]
  def change
  	add_column  :contacts, :shoe_size, :string
  	add_column  :contacts, :shoe_type, :string
  	add_column  :contacts, :shoe_model, :string
  	add_column  :contacts, :service_type, :string
  	add_column  :contacts, :phone_number, :string
  	add_column  :contacts, :address, :string
  	add_column  :contacts, :city, :string
  	add_column  :contacts, :state, :string
  	add_column  :contacts, :zip, :string
  	add_column  :contacts, :country, :string

  end
end
