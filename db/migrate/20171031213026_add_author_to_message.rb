class AddAuthorToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :author, :string
  end
end
