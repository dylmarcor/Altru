class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :needer, class_name: 'User'
  has_many :messages, dependent: :destroy
end
