class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
