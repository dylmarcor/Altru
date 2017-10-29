class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :e_mail
      t.string :password_digest
      t.string :image
      t.boolean :giver

      t.timestamps
    end
  end
end
