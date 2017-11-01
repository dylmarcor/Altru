class User < ApplicationRecord
    has_secure_password
    has_many :messages
    
    validates :e_mail, presence: true, uniqueness: true

    def chats
        if self.giver
            Chat.where(user_id: self.id)
        else
            Chat.where(needer_id: self.id)
        end
    end

    def self.needers_without_active_chats
        active_needers_ids = Chat.where(active: true).pluck(:needer_id)
        User.where.not(id: active_needers_ids).where(giver: false)
    end
    
end
