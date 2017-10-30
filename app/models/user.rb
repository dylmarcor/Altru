class User < ApplicationRecord
    has_secure_password
    has_many :messages

    def chats
        if self.giver
            Chat.where(user_id: self.id)
        else
            Chat.where(needer_id: self.id)
        end
    end

    validates :e_mail, presence: true, uniqueness: true
end
