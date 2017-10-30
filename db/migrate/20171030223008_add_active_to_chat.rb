class AddActiveToChat < ActiveRecord::Migration[5.1]
  def change
    add_column :chats, :active, :boolean, default: true
  end
end
