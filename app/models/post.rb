class Post < ApplicationRecord
	has_one_attached :headline_picture
    has_many_attached :images, dependent: :destroy
end
