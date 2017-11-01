class ChatsController < ApplicationController

    def index
        @chats = current_user.chats
    end

    def show
        @chat = Chat.find(params[:id])
        @msgs = @chat.messages.order('created_at DESC')
        @msg = Message.new
    end

    def create 
        @chat = Chat.new
        @chat.user = current_user
        needers = User.needers_without_active_chats.to_a
        if needers.length > 0
            needer = needers.sample
        else
            needer = User.where(giver: false).to_a.sample
        end
        @chat.needer = needer
        @chat.save
        redirect_to chat_path(@chat)
    end

    def destroy
        @chat = Chat.find(params[:id])
        @chat.destroy
        redirect_to chats_path
    end

    private

    def chat_params
        params.require(:chat).permit(:content)
    end

end