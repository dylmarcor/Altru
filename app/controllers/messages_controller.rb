class MessagesController < ApplicationController

    def create
        @msg = Message.new(content: params[:content], chat_id: params[:chat_id], author: current_user.first_name)
        if @msg.save
            redirect_to chat_path(params[:chat_id])
        end
    end
    

end