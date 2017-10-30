class ChatsController < ApplicationController

    def index
        @chats = current_user.chats
    end

    def create 
        # logic for randomly selecting a user in need
        if @chat.save
            flash[:notice] = "New Connection Started."
            redirect_to chat_path
        else
            render :new
        end
    end

    private

    def chat_params
        params.require(:chat).permit(:content)
    end

end