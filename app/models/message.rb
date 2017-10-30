class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat
  validates :content, length: { maximum: 500 }
end
