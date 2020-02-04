class User < ApplicationRecord
    has_many :recipes, dependent: :delete_all
    has_many :allergies, dependent: :delete_all
end
