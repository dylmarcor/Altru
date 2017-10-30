class AddNeedToChat < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :needer_id, :integer, null: false
  end
end
